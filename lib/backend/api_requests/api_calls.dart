import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class VerifCPFCall {
  static Future<ApiCallResponse> call({
    String? documento = '',
  }) async {
    final ffApiRequestBody = '''
{
  "documento": "$documento"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'verifCPF',
      apiUrl:
          'https://webhookteste.otaviomarco.com.br/webhook/3e42e2ca-a121-481d-a43f-1c20b9eed697',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? statusLogin(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class VerifSenhaCall {
  static Future<ApiCallResponse> call({
    String? documento = '',
    String? senha = '',
  }) async {
    final ffApiRequestBody = '''
{
  "senha": "$senha",
  "documento": "$documento"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'verifSenha',
      apiUrl:
          'https://webhookteste.otaviomarco.com.br/webhook/f13e0bba-ec60-4e3b-8e2c-448a679ae94f',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? fullName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.full_name''',
      ));
  static String? firstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.first_name''',
      ));
  static String? clienteId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.client_id''',
      ));
}

class CriarSenhaCall {
  static Future<ApiCallResponse> call({
    String? documento = '',
    String? senha = '',
    String? confirmacaoSenha = '',
  }) async {
    final ffApiRequestBody = '''
{
  "documento": "$documento",
  "senha": "$senha",
  "confirmacaoSenha": "$confirmacaoSenha"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'criarSenha',
      apiUrl:
          'https://webhookteste.otaviomarco.com.br/webhook/3b41a6c4-89c9-46bd-8e3e-82f4d71b6d75',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FaturasCall {
  static Future<ApiCallResponse> call({
    String? clientId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'faturas',
      apiUrl:
          'https://webhookteste.otaviomarco.com.br/webhook/01e001ef-effb-4523-9fbe-009b53a91a81',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'client_id': clientId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? datavencimento01(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].data_vencimento01''',
      ));
  static String? valor03(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].valor03''',
      ));
  static String? valor02(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].valor02''',
      ));
  static String? valor01(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].valor01''',
      ));
  static String? status03(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].status03''',
      ));
  static String? status02(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].status02''',
      ));
  static String? status01(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].status01''',
      ));
  static String? idfatura03(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].id_fatura03''',
      ));
  static String? idfatura02(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].id_fatura02''',
      ));
  static String? idfatura01(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].id_fatura01''',
      ));
  static String? datavencimento03(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].data_vencimento03''',
      ));
  static String? datavencimento02(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].data_vencimento02''',
      ));
  static String? linhadigital01(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].linhadigital01''',
      ));
  static String? linhadigital02(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].linhadigital02''',
      ));
  static String? linhadigital03(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].linhadigital03''',
      ));
}

class PixCall {
  static Future<ApiCallResponse> call({
    String? idFatura = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'pix',
      apiUrl:
          'https://webhookteste.otaviomarco.com.br/webhook/74a2b875-4368-4dad-8b40-c415a685173d',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'id_fatura': idFatura,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? pix(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.pix''',
      ));
}

class BoletoCall {
  static Future<ApiCallResponse> call({
    String? idFatura = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'boleto',
      apiUrl:
          'https://webhookteste.otaviomarco.com.br/webhook/74a2b875-4368-4dad-8b40-c415a685as23',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'id_fatura': idFatura,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? urlBoleto(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.urlBoleto''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
