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
Future pdfDERIVACIONparaATENCINESPECIALIZADA(
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
DERIVACION para ATENCIÓN  
asdasdasd

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
