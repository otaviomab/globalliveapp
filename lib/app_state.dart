import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      _fullName = await secureStorage.getString('ff_fullName') ?? _fullName;
    });
    await _safeInitAsync(() async {
      _firstName = await secureStorage.getString('ff_firstName') ?? _firstName;
    });
    await _safeInitAsync(() async {
      _clientId = await secureStorage.getString('ff_clientId') ?? _clientId;
    });
    await _safeInitAsync(() async {
      _documento = await secureStorage.getString('ff_documento') ?? _documento;
    });
    await _safeInitAsync(() async {
      _datavencimento01 =
          await secureStorage.getString('ff_datavencimento01') ??
              _datavencimento01;
    });
    await _safeInitAsync(() async {
      _datavencimento02 =
          await secureStorage.getString('ff_datavencimento02') ??
              _datavencimento02;
    });
    await _safeInitAsync(() async {
      _datavencimento03 =
          await secureStorage.getString('ff_datavencimento03') ??
              _datavencimento03;
    });
    await _safeInitAsync(() async {
      _idfatura01 =
          await secureStorage.getString('ff_idfatura01') ?? _idfatura01;
    });
    await _safeInitAsync(() async {
      _idfatura02 =
          await secureStorage.getString('ff_idfatura02') ?? _idfatura02;
    });
    await _safeInitAsync(() async {
      _idfatura03 =
          await secureStorage.getString('ff_idfatura03') ?? _idfatura03;
    });
    await _safeInitAsync(() async {
      _status01 = await secureStorage.getString('ff_status01') ?? _status01;
    });
    await _safeInitAsync(() async {
      _status02 = await secureStorage.getString('ff_status02') ?? _status02;
    });
    await _safeInitAsync(() async {
      _status03 = await secureStorage.getString('ff_status03') ?? _status03;
    });
    await _safeInitAsync(() async {
      _valor01 = await secureStorage.getString('ff_valor01') ?? _valor01;
    });
    await _safeInitAsync(() async {
      _valor02 = await secureStorage.getString('ff_valor02') ?? _valor02;
    });
    await _safeInitAsync(() async {
      _valor03 = await secureStorage.getString('ff_valor03') ?? _valor03;
    });
    await _safeInitAsync(() async {
      _linhadigital01 =
          await secureStorage.getString('ff_linhadigital01') ?? _linhadigital01;
    });
    await _safeInitAsync(() async {
      _linhadigital02 =
          await secureStorage.getString('ff_linhadigital02') ?? _linhadigital02;
    });
    await _safeInitAsync(() async {
      _linhadigital03 =
          await secureStorage.getString('ff_linhadigital03') ?? _linhadigital03;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _fullName = '';
  String get fullName => _fullName;
  set fullName(String value) {
    _fullName = value;
    secureStorage.setString('ff_fullName', value);
  }

  void deleteFullName() {
    secureStorage.delete(key: 'ff_fullName');
  }

  String _firstName = '';
  String get firstName => _firstName;
  set firstName(String value) {
    _firstName = value;
    secureStorage.setString('ff_firstName', value);
  }

  void deleteFirstName() {
    secureStorage.delete(key: 'ff_firstName');
  }

  String _clientId = '';
  String get clientId => _clientId;
  set clientId(String value) {
    _clientId = value;
    secureStorage.setString('ff_clientId', value);
  }

  void deleteClientId() {
    secureStorage.delete(key: 'ff_clientId');
  }

  String _documento = '';
  String get documento => _documento;
  set documento(String value) {
    _documento = value;
    secureStorage.setString('ff_documento', value);
  }

  void deleteDocumento() {
    secureStorage.delete(key: 'ff_documento');
  }

  String _datavencimento01 = '';
  String get datavencimento01 => _datavencimento01;
  set datavencimento01(String value) {
    _datavencimento01 = value;
    secureStorage.setString('ff_datavencimento01', value);
  }

  void deleteDatavencimento01() {
    secureStorage.delete(key: 'ff_datavencimento01');
  }

  String _datavencimento02 = '';
  String get datavencimento02 => _datavencimento02;
  set datavencimento02(String value) {
    _datavencimento02 = value;
    secureStorage.setString('ff_datavencimento02', value);
  }

  void deleteDatavencimento02() {
    secureStorage.delete(key: 'ff_datavencimento02');
  }

  String _datavencimento03 = '';
  String get datavencimento03 => _datavencimento03;
  set datavencimento03(String value) {
    _datavencimento03 = value;
    secureStorage.setString('ff_datavencimento03', value);
  }

  void deleteDatavencimento03() {
    secureStorage.delete(key: 'ff_datavencimento03');
  }

  String _idfatura01 = '';
  String get idfatura01 => _idfatura01;
  set idfatura01(String value) {
    _idfatura01 = value;
    secureStorage.setString('ff_idfatura01', value);
  }

  void deleteIdfatura01() {
    secureStorage.delete(key: 'ff_idfatura01');
  }

  String _idfatura02 = '';
  String get idfatura02 => _idfatura02;
  set idfatura02(String value) {
    _idfatura02 = value;
    secureStorage.setString('ff_idfatura02', value);
  }

  void deleteIdfatura02() {
    secureStorage.delete(key: 'ff_idfatura02');
  }

  String _idfatura03 = '';
  String get idfatura03 => _idfatura03;
  set idfatura03(String value) {
    _idfatura03 = value;
    secureStorage.setString('ff_idfatura03', value);
  }

  void deleteIdfatura03() {
    secureStorage.delete(key: 'ff_idfatura03');
  }

  String _status01 = '';
  String get status01 => _status01;
  set status01(String value) {
    _status01 = value;
    secureStorage.setString('ff_status01', value);
  }

  void deleteStatus01() {
    secureStorage.delete(key: 'ff_status01');
  }

  String _status02 = '';
  String get status02 => _status02;
  set status02(String value) {
    _status02 = value;
    secureStorage.setString('ff_status02', value);
  }

  void deleteStatus02() {
    secureStorage.delete(key: 'ff_status02');
  }

  String _status03 = '';
  String get status03 => _status03;
  set status03(String value) {
    _status03 = value;
    secureStorage.setString('ff_status03', value);
  }

  void deleteStatus03() {
    secureStorage.delete(key: 'ff_status03');
  }

  String _valor01 = '';
  String get valor01 => _valor01;
  set valor01(String value) {
    _valor01 = value;
    secureStorage.setString('ff_valor01', value);
  }

  void deleteValor01() {
    secureStorage.delete(key: 'ff_valor01');
  }

  String _valor02 = '';
  String get valor02 => _valor02;
  set valor02(String value) {
    _valor02 = value;
    secureStorage.setString('ff_valor02', value);
  }

  void deleteValor02() {
    secureStorage.delete(key: 'ff_valor02');
  }

  String _valor03 = '';
  String get valor03 => _valor03;
  set valor03(String value) {
    _valor03 = value;
    secureStorage.setString('ff_valor03', value);
  }

  void deleteValor03() {
    secureStorage.delete(key: 'ff_valor03');
  }

  String _linhadigital01 = '';
  String get linhadigital01 => _linhadigital01;
  set linhadigital01(String value) {
    _linhadigital01 = value;
    secureStorage.setString('ff_linhadigital01', value);
  }

  void deleteLinhadigital01() {
    secureStorage.delete(key: 'ff_linhadigital01');
  }

  String _linhadigital02 = '';
  String get linhadigital02 => _linhadigital02;
  set linhadigital02(String value) {
    _linhadigital02 = value;
    secureStorage.setString('ff_linhadigital02', value);
  }

  void deleteLinhadigital02() {
    secureStorage.delete(key: 'ff_linhadigital02');
  }

  String _linhadigital03 = '';
  String get linhadigital03 => _linhadigital03;
  set linhadigital03(String value) {
    _linhadigital03 = value;
    secureStorage.setString('ff_linhadigital03', value);
  }

  void deleteLinhadigital03() {
    secureStorage.delete(key: 'ff_linhadigital03');
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}
