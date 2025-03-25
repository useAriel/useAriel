// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class XrpStruct extends BaseStruct {
  XrpStruct({
    double? usd,
  }) : _usd = usd;

  // "USD" field.
  double? _usd;
  double get usd => _usd ?? 0.0;
  set usd(double? val) => _usd = val;

  void incrementUsd(double amount) => usd = usd + amount;

  bool hasUsd() => _usd != null;

  static XrpStruct fromMap(Map<String, dynamic> data) => XrpStruct(
        usd: castToType<double>(data['USD']),
      );

  static XrpStruct? maybeFromMap(dynamic data) =>
      data is Map ? XrpStruct.fromMap(data.cast<String, dynamic>()) : null;

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

  static XrpStruct fromSerializableMap(Map<String, dynamic> data) => XrpStruct(
        usd: deserializeParam(
          data['USD'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'XrpStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is XrpStruct && usd == other.usd;
  }

  @override
  int get hashCode => const ListEquality().hash([usd]);
}

XrpStruct createXrpStruct({
  double? usd,
}) =>
    XrpStruct(
      usd: usd,
    );
