// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GetBNBStruct extends BaseStruct {
  GetBNBStruct({
    double? usd,
  }) : _usd = usd;

  // "USD" field.
  double? _usd;
  double get usd => _usd ?? 0.0;
  set usd(double? val) => _usd = val;

  void incrementUsd(double amount) => usd = usd + amount;

  bool hasUsd() => _usd != null;

  static GetBNBStruct fromMap(Map<String, dynamic> data) => GetBNBStruct(
        usd: castToType<double>(data['USD']),
      );

  static GetBNBStruct? maybeFromMap(dynamic data) =>
      data is Map ? GetBNBStruct.fromMap(data.cast<String, dynamic>()) : null;

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

  static GetBNBStruct fromSerializableMap(Map<String, dynamic> data) =>
      GetBNBStruct(
        usd: deserializeParam(
          data['USD'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'GetBNBStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GetBNBStruct && usd == other.usd;
  }

  @override
  int get hashCode => const ListEquality().hash([usd]);
}

GetBNBStruct createGetBNBStruct({
  double? usd,
}) =>
    GetBNBStruct(
      usd: usd,
    );
