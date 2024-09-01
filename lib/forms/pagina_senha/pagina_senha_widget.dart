import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pagina_senha_model.dart';
export 'pagina_senha_model.dart';

class PaginaSenhaWidget extends StatefulWidget {
  const PaginaSenhaWidget({super.key});

  @override
  State<PaginaSenhaWidget> createState() => _PaginaSenhaWidgetState();
}

class _PaginaSenhaWidgetState extends State<PaginaSenhaWidget> {
  late PaginaSenhaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaginaSenhaModel());

    _model.senhaTextController ??= TextEditingController();
    _model.senhaFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFF2F2F2),
        body: SafeArea(
          top: true,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: const BoxDecoration(),
            child: Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 250.0,
                    height: 250.0,
                    decoration: const BoxDecoration(),
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/logo-simbolo-em-cima-e-a-frase-internet.-marrom-01.png',
                        width: 300.0,
                        height: 200.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 150.0,
                      decoration: const BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              'Acesse o seu perfil Global Live',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: const Color(0xFFFF8B01),
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 16.0, 0.0),
                              child: TextFormField(
                                controller: _model.senhaTextController,
                                focusNode: _model.senhaFocusNode,
                                autofocus: false,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Insira sua senha',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Montserrat',
                                        letterSpacing: 0.0,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0xFF1C1C1C),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      letterSpacing: 0.0,
                                    ),
                                validator: _model.senhaTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  Function() navigate = () {};
                                  _model.apiResultSenha =
                                      await VerifSenhaCall.call(
                                    senha: _model.senhaTextController.text,
                                    documento: FFAppState().documento,
                                  );

                                  if ((_model.apiResultSenha?.statusCode ??
                                          200) ==
                                      200) {
                                    FFAppState().firstName =
                                        VerifSenhaCall.firstName(
                                      (_model.apiResultSenha?.jsonBody ?? ''),
                                    )!;
                                    FFAppState().fullName =
                                        VerifSenhaCall.fullName(
                                      (_model.apiResultSenha?.jsonBody ?? ''),
                                    )!;
                                    FFAppState().clientId =
                                        VerifSenhaCall.clienteId(
                                      (_model.apiResultSenha?.jsonBody ?? ''),
                                    )!;
                                    _model.responsefat = await FaturasCall.call(
                                      clientId: VerifSenhaCall.clienteId(
                                        (_model.apiResultSenha?.jsonBody ?? ''),
                                      ),
                                    );

                                    FFAppState().datavencimento01 =
                                        valueOrDefault<String>(
                                      FaturasCall.datavencimento01(
                                        (_model.responsefat?.jsonBody ?? ''),
                                      ),
                                      '0',
                                    );
                                    FFAppState().datavencimento02 =
                                        valueOrDefault<String>(
                                      FaturasCall.datavencimento02(
                                        (_model.responsefat?.jsonBody ?? ''),
                                      ),
                                      '0',
                                    );
                                    FFAppState().datavencimento03 =
                                        valueOrDefault<String>(
                                      FaturasCall.datavencimento03(
                                        (_model.responsefat?.jsonBody ?? ''),
                                      ),
                                      '0',
                                    );
                                    FFAppState().idfatura01 =
                                        valueOrDefault<String>(
                                      FaturasCall.idfatura01(
                                        (_model.responsefat?.jsonBody ?? ''),
                                      ),
                                      '0',
                                    );
                                    FFAppState().idfatura02 =
                                        valueOrDefault<String>(
                                      FaturasCall.idfatura02(
                                        (_model.responsefat?.jsonBody ?? ''),
                                      ),
                                      '0',
                                    );
                                    FFAppState().idfatura03 =
                                        valueOrDefault<String>(
                                      FaturasCall.idfatura03(
                                        (_model.responsefat?.jsonBody ?? ''),
                                      ),
                                      '0',
                                    );
                                    FFAppState().status01 =
                                        valueOrDefault<String>(
                                      FaturasCall.status01(
                                        (_model.responsefat?.jsonBody ?? ''),
                                      ),
                                      '0',
                                    );
                                    FFAppState().status02 =
                                        valueOrDefault<String>(
                                      FaturasCall.status02(
                                        (_model.responsefat?.jsonBody ?? ''),
                                      ),
                                      '0',
                                    );
                                    FFAppState().status03 =
                                        valueOrDefault<String>(
                                      FaturasCall.status03(
                                        (_model.responsefat?.jsonBody ?? ''),
                                      ),
                                      '0',
                                    );
                                    FFAppState().valor01 =
                                        valueOrDefault<String>(
                                      FaturasCall.valor01(
                                        (_model.responsefat?.jsonBody ?? ''),
                                      ),
                                      '0',
                                    );
                                    FFAppState().valor02 =
                                        valueOrDefault<String>(
                                      FaturasCall.valor02(
                                        (_model.responsefat?.jsonBody ?? ''),
                                      ),
                                      '0',
                                    );
                                    FFAppState().valor03 =
                                        valueOrDefault<String>(
                                      FaturasCall.valor03(
                                        (_model.responsefat?.jsonBody ?? ''),
                                      ),
                                      '0',
                                    );
                                    FFAppState().linhadigital01 =
                                        valueOrDefault<String>(
                                      FaturasCall.linhadigital01(
                                        (_model.responsefat?.jsonBody ?? ''),
                                      ),
                                      '0',
                                    );
                                    FFAppState().linhadigital02 =
                                        valueOrDefault<String>(
                                      FaturasCall.linhadigital02(
                                        (_model.responsefat?.jsonBody ?? ''),
                                      ),
                                      '0',
                                    );
                                    FFAppState().linhadigital03 =
                                        valueOrDefault<String>(
                                      FaturasCall.linhadigital03(
                                        (_model.responsefat?.jsonBody ?? ''),
                                      ),
                                      '0',
                                    );
                                    setState(() {});
                                    GoRouter.of(context).prepareAuthEvent();
                                    await authManager.signIn();
                                    navigate = () => context.goNamedAuth(
                                        'Home', context.mounted);
                                  } else {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: const Text('Erro'),
                                          content: const Text('Senha Incorreta'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: const Text('Confirmar'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }

                                  navigate();

                                  setState(() {});
                                },
                                text: 'Acessar',
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      140.0, 0.0, 140.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: const Color(0xFFFF8B01),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 3.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
