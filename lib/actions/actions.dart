import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import 'package:flutter/material.dart';

Future queryusuariosexp(
  BuildContext context, {
  String? iduser,
}) async {
  List<UsuariosRow>? usuario;
  List<VistaUsuariosRolesRow>? userrol;

  usuario = await UsuariosTable().queryRows(
    queryFn: (q) => q.eqOrNull(
      'id',
      currentUserUid,
    ),
  );
  userrol = await VistaUsuariosRolesTable().queryRows(
    queryFn: (q) => q.eqOrNull(
      'id',
      currentUserUid,
    ),
  );
}
