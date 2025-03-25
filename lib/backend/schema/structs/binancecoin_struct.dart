// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BinancecoinStruct extends BaseStruct {
  BinancecoinStruct({
    double? usd,
  }) : _usd = usd;

  // "usd" field.
  double? _usd;
  double get usd => _usd ?? 0.0;
  set usd(double? val) => _usd = val;

  void incrementUsd(double amount) => usd = usd + amount;

  bool hasUsd() => _usd != null;

  static BinancecoinStruct fromMap(Map<String, dynamic> data) =>
      BinancecoinStruct(
        usd: castToType<double>(data['usd']),
      );

  static BinancecoinStruct? maybeFromMap(dynamic data) => data is Map
      ? BinancecoinStruct.fromMap(data.cast<String, dynamic>())
      : null;

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

  static BinancecoinStruct fromSerializableMap(Map<String, dynamic> data) =>
      BinancecoinStruct(
        usd: deserializeParam(
          data['usd'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'BinancecoinStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BinancecoinStruct && usd == other.usd;
  }

  @override
  int get hashCode => const ListEquality().hash([usd]);
}

BinancecoinStruct createBinancecoinStruct({
  double? usd,
}) =>
    BinancecoinStruct(
      usd: usd,
    );
