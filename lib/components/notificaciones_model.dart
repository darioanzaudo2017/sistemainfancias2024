import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'notificaciones_widget.dart' show NotificacionesWidget;
import 'package:flutter/material.dart';

class NotificacionesModel extends FlutterFlowModel<NotificacionesWidget> {
  ///  Local state fields for this component.

  List<String> idusuario = [];
  void addToIdusuario(String item) => idusuario.add(item);
  void removeFromIdusuario(String item) => idusuario.remove(item);
  void removeAtIndexFromIdusuario(int index) => idusuario.removeAt(index);
  void insertAtIndexInIdusuario(int index, String item) =>
      idusuario.insert(index, item);
  void updateIdusuarioAtIndex(int index, Function(String) updateFn) =>
      idusuario[index] = updateFn(idusuario[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  TNotificacionUsuariosRow? iduser;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<TNotificacionUsuariosRow>? listausuario;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
