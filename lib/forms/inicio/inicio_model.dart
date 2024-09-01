import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'inicio_widget.dart' show InicioWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class InicioModel extends FlutterFlowModel<InicioWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for documento widget.
  FocusNode? documentoFocusNode;
  TextEditingController? documentoTextController;
  final documentoMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? documentoTextControllerValidator;
  // Stores action output result for [Backend Call - API (verifCPF)] action in Button widget.
  ApiCallResponse? apiResultlogin;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    documentoFocusNode?.dispose();
    documentoTextController?.dispose();
  }
}
