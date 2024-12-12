// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';

Future pdfInvoiceDownload(
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
) async {
  // Add your function code here!
// Crear el documento PDF

  final pdf = pw.Document();

  // Agregar una página con el contenido del acta acuerdo, respetando los saltos de línea
  pdf.addPage(
    pw.Page(
      build: (context) => pw.Padding(
        padding: const pw.EdgeInsets.all(24),
        child: pw.Text(
          '''
ACTA ACUERDO entre el Niño/Niña/ Adolescente $nombreNNyA $apellidoNNyA, su familia y el Servicio Municipal de Protección integral de Derechos de Niños Niñas y Adolescentes.

En la ciudad de Córdoba a los $dias días del mes de $mes del año $anio se hacen presentes el niño/niña/adolescente $nombreNNyA $apellidoNNyA, DNI N° $dniNNyA, los integrantes de su familia $nombreFamiliar $apellidoFamiliar, DNI N° $dniFamiliar, respectivamente, con domicilio en $domicilio de la ciudad de Córdoba y el Servicio Municipal de Protección de Derechos con sede en el CPC $cpc de esta ciudad, representado en este acto por $representante.- En el marco del procedimiento de intervención realizado por el Servicio Municipal a partir de la fecha $fecha según Expediente $nroExpendiente, el niño y su familia ACUERDAN la implementación por parte del Servicio de las siguientes MEDIDAS DE PROTECCIÓN INTEGRAL de conformidad a lo establecido por ley provincial 9944 $medidas.

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
      ),
    ),
  );

  // Imprimir el archivo PDF
  await Printing.layoutPdf(
    onLayout: (PdfPageFormat format) async => pdf.save(),
  );
}
