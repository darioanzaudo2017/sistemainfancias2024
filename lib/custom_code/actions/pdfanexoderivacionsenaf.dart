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

Future pdfanexoderivacionsenaf(
  String? expediente,
  String? organismo,
  String? profesionalalquesederiva,
  String? intervencinsolicitada,
  String? nombreyapellidoNNyA,
  String? imagen,
  String? fecha,
  String? telefono,
  String? correo,
  List<DatospersonasStruct>? listagrupo,
) async {
  // Crear el documento PDF
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

  // Función para crear una página con el contenido principal
  pw.Widget buildMainContent() {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        if (headerImage != null) pw.Image(headerImage),
        pw.SizedBox(height: 20), // Espacio debajo del encabezado
        pw.Text(
          '''
 Expediente Nº: $expediente
 Fecha: $fecha
 - Organismo y Profesional remitente: $profesionalalquesederiva
 - Nombre de la Institución / Organismo / Profesional al que se deriva: $organismo
 - Tipo de Intervención solicitada: $intervencinsolicitada
 Fundamento legal de la Derivación:  
 Por este medio solicitamos a uds. intervengan, conforme a la ley provincial 9944 de promoción y protección integral de los derechos del niño /a y del adolescente, y Ordenanza de Sistema Municipal de Promoción y Protección Integral N° 11.817 en el presente caso, recepcionado por este Servicio de Protección de Derechos Municipal referido a derechos del / los Niños/ Niñas / Adolescentes $nombreyapellidoNNyA.

 Adjuntamos copia del Formulario de Recepción de la Demanda realizado en esta instancia, y requerimos nos informe en el plazo de cinco (5) días hábiles sobre la admisión de la presente derivación, las áreas o equipos responsables de la intervención y las medidas adoptadas en el caso derivado.  
 Quedamos a su disposición para ampliar información pertinente en caso de considerarse necesario. 
 Atentamente-. 
 Datos de contacto para solicitar información: 
 tel: $telefono. 
 correo: $correo
 Firma del/a Profesional 
 Del SPD. 

 ...................................
          ''',
          style: pw.TextStyle(
            fontSize: 14,
            lineSpacing: 1.5, // Interlineado de 1.5
          ),
          textAlign: pw.TextAlign.justify,
        ),
      ],
    );
  }

  // Función para crear la tabla
  pw.Widget buildTable() {
    if (listagrupo == null || listagrupo.isEmpty) {
      return pw.Text('No hay datos de grupo disponibles.');
    } else {
      return pw.Table.fromTextArray(
        headers: ['Nombre', 'Apellido', 'Vínculo'],
        data: listagrupo.map((item) {
          return [
            item.nombre ?? 'Desconocido',
            item.apellido ?? 'Desconocido',
            item.vinculo ?? 'Desconocido',
          ];
        }).toList(),
        headerStyle: pw.TextStyle(fontWeight: pw.FontWeight.bold),
        cellAlignment: pw.Alignment.centerLeft,
      );
    }
  }

  // Añadir la primera página con el contenido principal
  pdf.addPage(
    pw.MultiPage(
      build: (context) => [
        buildMainContent(),
        pw.SizedBox(height: 20), // Espacio debajo del texto
        buildTable(), // Tabla con los datos
      ],
      // Añadir el pie de página
      footer: (context) {
        return pw.Text(
          'Página ${context.pageNumber} de ${context.pagesCount}',
          style: pw.TextStyle(fontSize: 12, color: PdfColors.grey),
        );
      },
    ),
  );

  // Imprimir el archivo PDF
  await Printing.layoutPdf(
    onLayout: (PdfPageFormat format) async => pdf.save(),
  );
}