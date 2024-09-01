import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pagina_senha_widget.dart' show PaginaSenhaWidget;
import 'package:flutter/material.dart';

class PaginaSenhaModel extends FlutterFlowModel<PaginaSenhaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for senha widget.
  FocusNode? senhaFocusNode;
  TextEditingController? senhaTextController;
  String? Function(BuildContext, String?)? senhaTextControllerValidator;
  // Stores action output result for [Backend Call - API (verifSenha)] action in Button widget.
  ApiCallResponse? apiResultSenha;
  // Stores action output result for [Backend Call - API (faturas)] action in Button widget.
  ApiCallResponse? responsefat;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    senhaFocusNode?.dispose();
    senhaTextController?.dispose();
  }
}
