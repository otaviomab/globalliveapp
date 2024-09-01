import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'criar_senha_widget.dart' show CriarSenhaWidget;
import 'package:flutter/material.dart';

class CriarSenhaModel extends FlutterFlowModel<CriarSenhaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for criarSenha1 widget.
  FocusNode? criarSenha1FocusNode;
  TextEditingController? criarSenha1TextController;
  String? Function(BuildContext, String?)? criarSenha1TextControllerValidator;
  // State field(s) for criarSenha2 widget.
  FocusNode? criarSenha2FocusNode;
  TextEditingController? criarSenha2TextController;
  String? Function(BuildContext, String?)? criarSenha2TextControllerValidator;
  // Stores action output result for [Backend Call - API (criarSenha)] action in Button widget.
  ApiCallResponse? apiResult6hm;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    criarSenha1FocusNode?.dispose();
    criarSenha1TextController?.dispose();

    criarSenha2FocusNode?.dispose();
    criarSenha2TextController?.dispose();
  }
}
