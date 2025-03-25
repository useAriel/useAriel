// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RippleStruct extends BaseStruct {
  RippleStruct({
    double? usd,
  }) : _usd = usd;

  // "usd" field.
  double? _usd;
  double get usd => _usd ?? 0.0;
  set usd(double? val) => _usd = val;

  void incrementUsd(double amount) => usd = usd + amount;

  bool hasUsd() => _usd != null;

  static RippleStruct fromMap(Map<String, dynamic> data) => RippleStruct(
        usd: castToType<double>(data['usd']),
      );

  static RippleStruct? maybeFromMap(dynamic data) =>
      data is Map ? RippleStruct.fromMap(data.cast<String, dynamic>()) : null;

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

  static RippleStruct fromSerializableMap(Map<String, dynamic> data) =>
      RippleStruct(
        usd: deserializeParam(
          data['usd'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'RippleStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RippleStruct && usd == other.usd;
  }

  @override
  int get hashCode => const ListEquality().hash([usd]);
}

RippleStruct createRippleStruct({
  double? usd,
}) =>
    RippleStruct(
      usd: usd,
    );
