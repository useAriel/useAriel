// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SolStruct extends BaseStruct {
  SolStruct({
    double? usd,
  }) : _usd = usd;

  // "USD" field.
  double? _usd;
  double get usd => _usd ?? 0.0;
  set usd(double? val) => _usd = val;

  void incrementUsd(double amount) => usd = usd + amount;

  bool hasUsd() => _usd != null;

  static SolStruct fromMap(Map<String, dynamic> data) => SolStruct(
        usd: castToType<double>(data['USD']),
      );

  static SolStruct? maybeFromMap(dynamic data) =>
      data is Map ? SolStruct.fromMap(data.cast<String, dynamic>()) : null;

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

  static SolStruct fromSerializableMap(Map<String, dynamic> data) => SolStruct(
        usd: deserializeParam(
          data['USD'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'SolStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SolStruct && usd == other.usd;
  }

  @override
  int get hashCode => const ListEquality().hash([usd]);
}

SolStruct createSolStruct({
  double? usd,
}) =>
    SolStruct(
      usd: usd,
    );
