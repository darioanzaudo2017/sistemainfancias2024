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

Future pdfanexoderivacionsenafCopy(
  String? nombresyApellidos,
  String? fechadeNacimiento,
  String? lugardeNacimiento,
  String? edad,
  String? estinscriptoenelRegistroNacionaldelasPersonas,
  String? imagen,
  String? dni,
  String? centrodeSaluddondeseatiende,
  String? numdeHistoriaClnica,
  List<DatospersonasStruct>? listagrupo,
  String? poseeCUD,
  String? obraSocial,
  String? escuelaColegioalqueconcurreellanioa,
  String? salaGradoAo,
  String? turno,
  String? telfono,
  String? domicilio,
  String? concurrenciaescolaractual,
  String? nivelalcanzado,
  String? referenciadelaEscuela,
  String? trabajaellanioa,
  String? tipodetrabajoquerealiza,
  String? monoparental,
  String? a,
  String? b,
  String? fundamentacion,
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

  // Agregar la primera página con el contenido inicial
  pdf.addPage(
    pw.MultiPage(
      pageFormat: PdfPageFormat.a4,
      margin: pw.EdgeInsets.all(24),
      build: (context) => [
        pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            // Contenedor para la imagen alineada a la derecha
            if (headerImage != null)
              pw.Container(
                alignment: pw.Alignment.centerRight,
                height: 60,
                width: 150,
                child: pw.Image(headerImage, fit: pw.BoxFit.cover),
              ),
            pw.SizedBox(height: 20),
            pw.Text(
              '''
ANEXO I
SOLICITUD DE MEDIDA EXCEPCIONAL A SENAF
Fecha: ${DateTime.now().toString()}
Urgente adjuntar la Recepción de Demanda
Datos de la solicitante
Servicio de Protección de Derechos Municipal
Documentación que adjunta en copia:
a) Formulario Cuadro de Medidas de protección implementadas ( )
b) Formulario solo si hubo innovación o sustitución de Medida de Protección ( )
Datos de Niños, Niñas o Adolescentes
Nombres y Apellidos: $nombresyApellidos
Fecha de Nacimiento: $fechadeNacimiento
Lugar de Nacimiento: $lugardeNacimiento
Edad: $edad
¿Está inscripto en el Registro Nacional de las Personas? $estinscriptoenelRegistroNacionaldelasPersonas
DNI Nº: $dni
Centro de Salud donde se atiende: $centrodeSaluddondeseatiende (adjuntar copia).
Nº de Historia Clínica: $numdeHistoriaClnica 
¿Posee CUD? $poseeCUD
Obra Social: $obraSocial
Escuela/Colegio al que concurre el/la niño/a: $escuelaColegioalqueconcurreellanioa
Sala/Grado/Año: $salaGradoAo
Turno: $turno
Teléfono: $telfono
Domicilio: $domicilio
Concurrencia escolar actual: $concurrenciaescolaractual
Nivel alcanzado: $nivelalcanzado
Referencia de la Escuela: $referenciadelaEscuela
¿Trabaja el/la niño/a? $trabajaellanioa
Tipo de trabajo que realiza: $tipodetrabajoquerealiza
''',
              style: pw.TextStyle(
                fontSize: 12,
                lineSpacing: 1.5,
              ),
              textAlign: pw.TextAlign.justify,
            ),

// Aquí agregamos la tabla de integrantes del grupo
            if (listagrupo != null && listagrupo.isNotEmpty)
              pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.SizedBox(height: 20),
                  pw.Text(
                    'Lista de integrantes del grupo:',
                    style: pw.TextStyle(
                      fontSize: 14,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                  pw.SizedBox(height: 10),
                  pw.Table.fromTextArray(
                    headers: ['Nombre', 'Apellido', 'Vínculo', 'conviviente'],
                    data: listagrupo.map((item) {
                      return [
                        item.nombre ?? 'Desconocido',
                        item.apellido ?? 'Desconocido',
                        item.vinculo ?? 'Desconocido',
                        item.conviviente ?? 'Desconocido',
                      ];
                    }).toList(),
                  ),
                ],
              ),

            pw.SizedBox(height: 20),

            pw.Text(
              '''
TIPO DE FAMILIA : $monoparental

Se resuelve el CESE DE LAS MEDIDAS DE PROTECCIÓN DE DERECHOS y la SOLICITUD DE LA MEDIDA EXCEPCIONAL A SENAF en razón de:

a) Haber agotado las Medidas de protección posibles para la restitución de los derechos vulnerados sin que los mismos hayan podido ser restituidos. $a

b) Que la permanencia en su medio familiar implica un grave riesgo para la vida e integridad psicofísica del niño o adolescente. $b

Fundamentación:
''',
              style: pw.TextStyle(
                fontSize: 12,
                lineSpacing: 1.5,
              ),
              textAlign: pw.TextAlign.justify,
            ),

// El campo de fundamentación ahora usa pw.Paragraph para manejar múltiples líneas
            pw.Paragraph(
              text: fundamentacion ??
                  '', // Asegúrate de que 'fundamentacion' no sea nulo
              style: pw.TextStyle(fontSize: 12),
              textAlign: pw.TextAlign
                  .justify, // Ajusta a la justificación si es necesario
            ),

            pw.SizedBox(height: 20),

            pw.Text(
              'Firma del/los profesional/es solicitantes de SPD:',
              style: pw.TextStyle(
                fontSize: 12,
                lineSpacing: 1.5,
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
