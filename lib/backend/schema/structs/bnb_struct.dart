// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BnbStruct extends BaseStruct {
  BnbStruct({
    double? usd,
  }) : _usd = usd;

  // "USD" field.
  double? _usd;
  double get usd => _usd ?? 0.0;
  set usd(double? val) => _usd = val;

  void incrementUsd(double amount) => usd = usd + amount;

  bool hasUsd() => _usd != null;

  static BnbStruct fromMap(Map<String, dynamic> data) => BnbStruct(
        usd: castToType<double>(data['USD']),
      );

  static BnbStruct? maybeFromMap(dynamic data) =>
      data is Map ? BnbStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'USD': _usd,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'USD': serializeParam(
          _usd,
          ParamType.double,
        ),
      }.withoutNulls;

  static BnbStruct fromSerializableMap(Map<String, dynamic> data) => BnbStruct(
        usd: deserializeParam(
          data['USD'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'BnbStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BnbStruct && usd == other.usd;
  }

  @override
  int get hashCode => const ListEquality().hash([usd]);
}

BnbStruct createBnbStruct({
  double? usd,
}) =>
    BnbStruct(
      usd: usd,
    );
