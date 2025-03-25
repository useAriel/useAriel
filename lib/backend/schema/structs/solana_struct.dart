// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SolanaStruct extends BaseStruct {
  SolanaStruct({
    double? usd,
  }) : _usd = usd;

  // "usd" field.
  double? _usd;
  double get usd => _usd ?? 0.0;
  set usd(double? val) => _usd = val;

  void incrementUsd(double amount) => usd = usd + amount;

  bool hasUsd() => _usd != null;

  static SolanaStruct fromMap(Map<String, dynamic> data) => SolanaStruct(
        usd: castToType<double>(data['usd']),
      );

  static SolanaStruct? maybeFromMap(dynamic data) =>
      data is Map ? SolanaStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'usd': _usd,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'usd': serializeParam(
          _usd,
          ParamType.double,
        ),
      }.withoutNulls;

  static SolanaStruct fromSerializableMap(Map<String, dynamic> data) =>
      SolanaStruct(
        usd: deserializeParam(
          data['usd'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'SolanaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SolanaStruct && usd == other.usd;
  }

  @override
  int get hashCode => const ListEquality().hash([usd]);
}

SolanaStruct createSolanaStruct({
  double? usd,
}) =>
    SolanaStruct(
      usd: usd,
    );
