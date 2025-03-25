import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  GetBTCStruct _BTCPrice =
      GetBTCStruct.fromSerializableMap(jsonDecode('{\"USD\":\"0.0\"}'));
  GetBTCStruct get BTCPrice => _BTCPrice;
  set BTCPrice(GetBTCStruct value) {
    _BTCPrice = value;
  }

  void updateBTCPriceStruct(Function(GetBTCStruct) updateFn) {
    updateFn(_BTCPrice);
  }

  GetETHStruct _ETHPrice =
      GetETHStruct.fromSerializableMap(jsonDecode('{\"USD\":\"0.0\"}'));
  GetETHStruct get ETHPrice => _ETHPrice;
  set ETHPrice(GetETHStruct value) {
    _ETHPrice = value;
  }

  void updateETHPriceStruct(Function(GetETHStruct) updateFn) {
    updateFn(_ETHPrice);
  }

  GetXRPStruct _XRPPrice =
      GetXRPStruct.fromSerializableMap(jsonDecode('{\"USD\":\"0.0\"}'));
  GetXRPStruct get XRPPrice => _XRPPrice;
  set XRPPrice(GetXRPStruct value) {
    _XRPPrice = value;
  }

  void updateXRPPriceStruct(Function(GetXRPStruct) updateFn) {
    updateFn(_XRPPrice);
  }

  GetSOLStruct _SOLPrice =
      GetSOLStruct.fromSerializableMap(jsonDecode('{\"USD\":\"0.0\"}'));
  GetSOLStruct get SOLPrice => _SOLPrice;
  set SOLPrice(GetSOLStruct value) {
    _SOLPrice = value;
  }

  void updateSOLPriceStruct(Function(GetSOLStruct) updateFn) {
    updateFn(_SOLPrice);
  }

  GetBNBStruct _BNBPrice =
      GetBNBStruct.fromSerializableMap(jsonDecode('{\"USD\":\"0.0\"}'));
  GetBNBStruct get BNBPrice => _BNBPrice;
  set BNBPrice(GetBNBStruct value) {
    _BNBPrice = value;
  }

  void updateBNBPriceStruct(Function(GetBNBStruct) updateFn) {
    updateFn(_BNBPrice);
  }

  String _Addy = '';
  String get Addy => _Addy;
  set Addy(String value) {
    _Addy = value;
  }

  TestoStruct _TESTO = TestoStruct.fromSerializableMap(
      jsonDecode('{\"tokens\":\"[]\",\"total\":\"0.0\",\"totalSol\":\"0.0\"}'));
  TestoStruct get TESTO => _TESTO;
  set TESTO(TestoStruct value) {
    _TESTO = value;
  }

  void updateTESTOStruct(Function(TestoStruct) updateFn) {
    updateFn(_TESTO);
  }

  List<double> _eseseses = [0.0, 0.0, 0.0, 0.0, 0.0];
  List<double> get eseseses => _eseseses;
  set eseseses(List<double> value) {
    _eseseses = value;
  }

  void addToEseseses(double value) {
    eseseses.add(value);
  }

  void removeFromEseseses(double value) {
    eseseses.remove(value);
  }

  void removeAtIndexFromEseseses(int index) {
    eseseses.removeAt(index);
  }

  void updateEsesesesAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    eseseses[index] = updateFn(_eseseses[index]);
  }

  void insertAtIndexInEseseses(int index, double value) {
    eseseses.insert(index, value);
  }

  AltcoinzStruct _ALTCOINZ = AltcoinzStruct.fromSerializableMap(jsonDecode(
      '{\"BTC\":\"{\\\"USD\\\":\\\"0.0\\\"}\",\"ETH\":\"{\\\"USD\\\":\\\"0.0\\\"}\",\"XRP\":\"{\\\"USD\\\":\\\"0.0\\\"}\",\"BNB\":\"{\\\"USD\\\":\\\"0.0\\\"}\",\"SOL\":\"{\\\"USD\\\":\\\"0.0\\\"}\"}'));
  AltcoinzStruct get ALTCOINZ => _ALTCOINZ;
  set ALTCOINZ(AltcoinzStruct value) {
    _ALTCOINZ = value;
  }

  void updateALTCOINZStruct(Function(AltcoinzStruct) updateFn) {
    updateFn(_ALTCOINZ);
  }

  UntzStruct _UNTZ = UntzStruct.fromSerializableMap(jsonDecode(
      '{\"BTC\":\"{\\\"USD\\\":\\\"0.0\\\"}\",\"ETH\":\"{\\\"USD\\\":\\\"0.0\\\"}\",\"SOL\":\"{\\\"USD\\\":\\\"0.0\\\"}\",\"BNB\":\"{\\\"USD\\\":\\\"0.0\\\"}\",\"XRP\":\"{\\\"USD\\\":\\\"0.0\\\"}\"}'));
  UntzStruct get UNTZ => _UNTZ;
  set UNTZ(UntzStruct value) {
    _UNTZ = value;
  }

  void updateUNTZStruct(Function(UntzStruct) updateFn) {
    updateFn(_UNTZ);
  }

  String _CA = '';
  String get CA => _CA;
  set CA(String value) {
    _CA = value;
  }
}
