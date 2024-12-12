// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:emailjs/emailjs.dart' as emailjs;

Future enviarmail(
  String? nombre,
  String? nNyA,
  String? dni,
  String? email,
  String? sujet,
  String? message,
  String? expediente,
  String? fecha,
  String? spd,
  String? sentto,
) async {
  // Add your function code here!
  // Definir parámetros para la plantilla
  final templateParams = {
    'nombre': nombre ?? '',
    'nNyA': nNyA ?? '',
    'dni': dni ?? '',
    'email': email ?? '',
    'sujet': sujet ?? '',
    'message': message ?? '',
    'expediente': expediente ?? '',
    'fecha': fecha ?? '',
    'spd': spd ?? '',
    'sentto': sentto ?? '',
  };

  try {
    // Enviar el correo usando emailjs
    await emailjs.send(
      'service_kk7dwyj', // Reemplazar con tu ID de servicio
      'template_lspwigk', // Reemplazar con tu ID de plantilla
      templateParams,
      emailjs.Options(
        publicKey: 'CKtjJRmbbU0HNHeUF', // Reemplazar con tu clave pública
        privateKey: '5j9eG3mPnfz6uATGGGrN_', // Reemplazar con tu clave privada
      ),
    );
    print('SUCCESS!');
  } catch (error) {
    print('ERROR: $error');
  }
}
