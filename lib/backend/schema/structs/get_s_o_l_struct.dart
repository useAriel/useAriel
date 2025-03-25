// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GetSOLStruct extends BaseStruct {
  GetSOLStruct({
    double? usd,
  }) : _usd = usd;

  // "USD" field.
  double? _usd;
  double get usd => _usd ?? 0.0;
  set usd(double? val) => _usd = val;

  void incrementUsd(double amount) => usd = usd + amount;

  bool hasUsd() => _usd != null;

  static GetSOLStruct fromMap(Map<String, dynamic> data) => GetSOLStruct(
        usd: castToType<double>(data['USD']),
      );

  static GetSOLStruct? maybeFromMap(dynamic data) =>
      data is Map ? GetSOLStruct.fromMap(data.cast<String, dynamic>()) : null;

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

  static GetSOLStruct fromSerializableMap(Map<String, dynamic> data) =>
      GetSOLStruct(
        usd: deserializeParam(
          data['USD'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'GetSOLStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GetSOLStruct && usd == other.usd;
  }

  @override
  int get hashCode => const ListEquality().hash([usd]);
}

GetSOLStruct createGetSOLStruct({
  double? usd,
}) =>
    GetSOLStruct(
      usd: usd,
    );
