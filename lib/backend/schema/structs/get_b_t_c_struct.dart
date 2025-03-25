// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GetBTCStruct extends BaseStruct {
  GetBTCStruct({
    double? usd,
  }) : _usd = usd;

  // "USD" field.
  double? _usd;
  double get usd => _usd ?? 0.0;
  set usd(double? val) => _usd = val;

  void incrementUsd(double amount) => usd = usd + amount;

  bool hasUsd() => _usd != null;

  static GetBTCStruct fromMap(Map<String, dynamic> data) => GetBTCStruct(
        usd: castToType<double>(data['USD']),
      );

  static GetBTCStruct? maybeFromMap(dynamic data) =>
      data is Map ? GetBTCStruct.fromMap(data.cast<String, dynamic>()) : null;

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

  static GetBTCStruct fromSerializableMap(Map<String, dynamic> data) =>
      GetBTCStruct(
        usd: deserializeParam(
          data['USD'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'GetBTCStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GetBTCStruct && usd == other.usd;
  }

  @override
  int get hashCode => const ListEquality().hash([usd]);
}

GetBTCStruct createGetBTCStruct({
  double? usd,
}) =>
    GetBTCStruct(
      usd: usd,
    );
