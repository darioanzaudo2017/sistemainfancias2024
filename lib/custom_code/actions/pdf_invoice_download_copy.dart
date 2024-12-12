// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:http/http.dart' as http;
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';

// Función principal para generar el PDF
Future pdfInvoiceDownloadCopy(
  String? nombreNNyA,
  String? apellidoNNyA,
  String? dniNNyA,
  String? nombreFamiliar,
  String? apellidoFamiliar,
  String? dniFamiliar,
  String? dias,
  String? mes,
  String? anio,
  String? domicilio,
  String? cpc,
  String? representante,
  String? fecha,
  String? nroExpendiente,
  String? medidas,
  String? responsabilidadesServicio,
  String? responsabilidadesFamilia,
  String? institucion,
  String? responsabilidadesInstitucion,
  String? imagen,
  List<String>? derechos,
) async {
  final pdf = pw.Document();

  // Función interna para cargar una imagen desde una URL
  Future<pw.ImageProvider> loadNetworkImage(String url) async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final imageBytes = response.bodyBytes;
      return pw.MemoryImage(imageBytes);
    } else {
      throw Exception('Error loading image from network');
    }
  }

  // Cargar la imagen desde la URL
  pw.ImageProvider? headerImage;
  if (imagen != null && imagen.isNotEmpty) {
    try {
      headerImage = await loadNetworkImage(imagen);
    } catch (e) {
      print('Error loading image: $e');
    }
  }

  // Agregar una página con el contenido del acta acuerdo, respetando los saltos de línea
  pdf.addPage(
    pw.Page(
      build: (context) => pw.Padding(
        padding: const pw.EdgeInsets.all(24),
        child: pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            if (headerImage !=
                null) // Solo agregar imagen si se cargó correctamente
              pw.Image(headerImage),
            pw.SizedBox(height: 20), // Espacio debajo del encabezado
            pw.Text(
              '''
ACTA ACUERDO entre el Niño/Niña/ Adolescente $nombreNNyA $apellidoNNyA, su familia y el Servicio Municipal de Protección integral de Derechos de Niños Niñas y Adolescentes.

En la ciudad de Córdoba a los $dias días del mes de $mes del año $anio se hacen presentes el niño/niña/adolescente $nombreNNyA $apellidoNNyA, DNI N° $dniNNyA, los integrantes de su familia $nombreFamiliar $apellidoFamiliar, DNI N° $dniFamiliar, respectivamente, con domicilio en $domicilio de la ciudad de Córdoba y el Servicio Municipal de Protección de Derechos con sede en el CPC $cpc de esta ciudad, representado en este acto por $representante.- En el marco del procedimiento de intervención realizado por el Servicio Municipal a partir de la fecha $fecha según Expediente $nroExpendiente, el niño/a, en relacion a derechos  $derechos y su familia ACUERDAN la implementación por parte del Servicio de las siguientes MEDIDAS DE PROTECCIÓN INTEGRAL de conformidad a lo establecido por ley provincial 9944 $medidas.

En relación a estas MEDIDAS los presentes asumen las siguiente responsabilidades: el Servicio $responsabilidadesServicio y la Familia $responsabilidadesFamilia. Se deja constancia que por su parte la institución/organismo $institucion se compromete a $responsabilidadesInstitucion.

________________________   __________________________   ________________
Firmas Profesionales SPD   Firma adultos responsables   Firma del niño/a
              ''',
              style: pw.TextStyle(
                fontSize: 14,
                lineSpacing: 1.5, // Interlineado de 1.5
              ),
              textAlign: pw.TextAlign.justify,
            ),
          ],
        ),
      ),
    ),
  );

  // Imprimir el archivo PDF
  await Printing.layoutPdf(
    onLayout: (PdfPageFormat format) async => pdf.save(),
  );
}
