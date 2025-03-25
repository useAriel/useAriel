// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TokenStruct extends BaseStruct {
  TokenStruct({
    String? name,
    String? symbol,
    String? image,
  })  : _name = name,
        _symbol = symbol,
        _image = image;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "symbol" field.
  String? _symbol;
  String get symbol => _symbol ?? '';
  set symbol(String? val) => _symbol = val;

  bool hasSymbol() => _symbol != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  static TokenStruct fromMap(Map<String, dynamic> data) => TokenStruct(
        name: data['name'] as String?,
        symbol: data['symbol'] as String?,
        image: data['image'] as String?,
      );

  static TokenStruct? maybeFromMap(dynamic data) =>
      data is Map ? TokenStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'symbol': _symbol,
        'image': _image,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'symbol': serializeParam(
          _symbol,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
      }.withoutNulls;

  static TokenStruct fromSerializableMap(Map<String, dynamic> data) =>
      TokenStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        symbol: deserializeParam(
          data['symbol'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TokenStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TokenStruct &&
        name == other.name &&
        symbol == other.symbol &&
        image == other.image;
  }

  @override
  int get hashCode => const ListEquality().hash([name, symbol, image]);
}

TokenStruct createTokenStruct({
  String? name,
  String? symbol,
  String? image,
}) =>
    TokenStruct(
      name: name,
      symbol: symbol,
      image: image,
    );
