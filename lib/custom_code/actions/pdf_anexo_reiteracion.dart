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

Future pdfAnexoReiteracion(
  String? expediente,
  String? organismo,
  String? profesionalalquesederiva,
  String? intervencinsolicitada,
  String? imagen,
  String? fecha,
) async {
  // Add your function code here!

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

  // Crear el contenido del documento en múltiples páginas
  pdf.addPage(
    pw.MultiPage(
      pageFormat: PdfPageFormat.a4,
      margin: const pw.EdgeInsets.all(24),
      build: (context) => [
        pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            if (headerImage !=
                null) // Solo agregar imagen si se cargó correctamente
              pw.Align(
                alignment: pw.Alignment.topLeft,
                child: pw.SizedBox(
                  width: 100, // Hacer la imagen más pequeña
                  child: pw.Image(headerImage),
                ),
              ),
            pw.SizedBox(height: 20), // Espacio debajo de la imagen
            pw.Text(
              '''
Expediente Nº: $expediente
Fecha: $fecha
- Organismo y Profesional Remitente: $organismo
- Nombre de la Institución / Organismo / Profesional al que se deriva: $profesionalalquesederiva
- Tipo de Intervención solicitada: $intervencinsolicitada

Fundamento Legal de la Derivación:

Por este medio REITERAMOS A UD. LA SOLICITUD DE INTERVENCIÓN REMITIDA con fecha: $fecha conforme a la ley provincial 9944, y Ordenanza municipal N° 11.817 en el presente caso, recepcionado por este Servicio de Protección de Derechos Municipal.

Le recordamos HABER ADJUNTADO COPIA DEL FORMULARIO DE RECEPCIÓN DE DEMANDA REALIZADO en esa instancia, y requerimos, teniendo en cuenta las responsabilidades establecidas para todo agente público por ley 9944, nos informe en el plazo de cinco (5) días hábiles sobre la admisión de la presente derivación, las áreas o equipos responsables de la intervención y las medidas adoptadas en el caso derivado.

Firma del/a profesional
Del SPD.

              ''',
              style: pw.TextStyle(
                fontSize: 14,
                lineSpacing: 1.5, // Interlineado de 1.5
              ),
              textAlign: pw.TextAlign.justify,
            ),
          ],
        ),
      ],
    ),
  );

  // Imprimir el archivo PDF
  await Printing.layoutPdf(
    onLayout: (PdfPageFormat format) async => pdf.save(),
  );
}
