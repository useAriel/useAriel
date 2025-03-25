// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TokensStruct extends BaseStruct {
  TokensStruct({
    TokenStruct? token,
    double? balance,
    double? value,
  })  : _token = token,
        _balance = balance,
        _value = value;

  // "token" field.
  TokenStruct? _token;
  TokenStruct get token => _token ?? TokenStruct();
  set token(TokenStruct? val) => _token = val;

  void updateToken(Function(TokenStruct) updateFn) {
    updateFn(_token ??= TokenStruct());
  }

  bool hasToken() => _token != null;

  // "balance" field.
  double? _balance;
  double get balance => _balance ?? 0.0;
  set balance(double? val) => _balance = val;

  void incrementBalance(double amount) => balance = balance + amount;

  bool hasBalance() => _balance != null;

  // "value" field.
  double? _value;
  double get value => _value ?? 0.0;
  set value(double? val) => _value = val;

  void incrementValue(double amount) => value = value + amount;

  bool hasValue() => _value != null;

  static TokensStruct fromMap(Map<String, dynamic> data) => TokensStruct(
        token: data['token'] is TokenStruct
            ? data['token']
            : TokenStruct.maybeFromMap(data['token']),
        balance: castToType<double>(data['balance']),
        value: castToType<double>(data['value']),
      );

  static TokensStruct? maybeFromMap(dynamic data) =>
      data is Map ? TokensStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'token': _token?.toMap(),
        'balance': _balance,
        'value': _value,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'token': serializeParam(
          _token,
          ParamType.DataStruct,
        ),
        'balance': serializeParam(
          _balance,
          ParamType.double,
        ),
        'value': serializeParam(
          _value,
          ParamType.double,
        ),
      }.withoutNulls;

  static TokensStruct fromSerializableMap(Map<String, dynamic> data) =>
      TokensStruct(
        token: deserializeStructParam(
          data['token'],
          ParamType.DataStruct,
          false,
          structBuilder: TokenStruct.fromSerializableMap,
        ),
        balance: deserializeParam(
          data['balance'],
          ParamType.double,
          false,
        ),
        value: deserializeParam(
          data['value'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'TokensStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TokensStruct &&
        token == other.token &&
        balance == other.balance &&
        value == other.value;
  }

  @override
  int get hashCode => const ListEquality().hash([token, balance, value]);
}

TokensStruct createTokensStruct({
  TokenStruct? token,
  double? balance,
  double? value,
}) =>
    TokensStruct(
      token: token ?? TokenStruct(),
      balance: balance,
      value: value,
    );
