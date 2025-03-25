// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BitcoinStruct extends BaseStruct {
  BitcoinStruct({
    int? usd,
  }) : _usd = usd;

  // "usd" field.
  int? _usd;
  int get usd => _usd ?? 0;
  set usd(int? val) => _usd = val;

  void incrementUsd(int amount) => usd = usd + amount;

  bool hasUsd() => _usd != null;

  static BitcoinStruct fromMap(Map<String, dynamic> data) => BitcoinStruct(
        usd: castToType<int>(data['usd']),
      );

  static BitcoinStruct? maybeFromMap(dynamic data) =>
      data is Map ? BitcoinStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'usd': _usd,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'usd': serializeParam(
          _usd,
          ParamType.int,
        ),
      }.withoutNulls;

  static BitcoinStruct fromSerializableMap(Map<String, dynamic> data) =>
      BitcoinStruct(
        usd: deserializeParam(
          data['usd'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'BitcoinStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BitcoinStruct && usd == other.usd;
  }

  @override
  int get hashCode => const ListEquality().hash([usd]);
}

BitcoinStruct createBitcoinStruct({
  int? usd,
}) =>
    BitcoinStruct(
      usd: usd,
    );
