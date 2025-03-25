// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TestoStruct extends BaseStruct {
  TestoStruct({
    List<TokensStruct>? tokens,
    double? total,
    double? totalSol,
  })  : _tokens = tokens,
        _total = total,
        _totalSol = totalSol;

  // "tokens" field.
  List<TokensStruct>? _tokens;
  List<TokensStruct> get tokens => _tokens ?? const [];
  set tokens(List<TokensStruct>? val) => _tokens = val;

  void updateTokens(Function(List<TokensStruct>) updateFn) {
    updateFn(_tokens ??= []);
  }

  bool hasTokens() => _tokens != null;

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  set total(double? val) => _total = val;

  void incrementTotal(double amount) => total = total + amount;

  bool hasTotal() => _total != null;

  // "totalSol" field.
  double? _totalSol;
  double get totalSol => _totalSol ?? 0.0;
  set totalSol(double? val) => _totalSol = val;

  void incrementTotalSol(double amount) => totalSol = totalSol + amount;

  bool hasTotalSol() => _totalSol != null;

  static TestoStruct fromMap(Map<String, dynamic> data) => TestoStruct(
        tokens: getStructList(
          data['tokens'],
          TokensStruct.fromMap,
        ),
        total: castToType<double>(data['total']),
        totalSol: castToType<double>(data['totalSol']),
      );

  static TestoStruct? maybeFromMap(dynamic data) =>
      data is Map ? TestoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'tokens': _tokens?.map((e) => e.toMap()).toList(),
        'total': _total,
        'totalSol': _totalSol,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'tokens': serializeParam(
          _tokens,
          ParamType.DataStruct,
          isList: true,
        ),
        'total': serializeParam(
          _total,
          ParamType.double,
        ),
        'totalSol': serializeParam(
          _totalSol,
          ParamType.double,
        ),
      }.withoutNulls;

  static TestoStruct fromSerializableMap(Map<String, dynamic> data) =>
      TestoStruct(
        tokens: deserializeStructParam<TokensStruct>(
          data['tokens'],
          ParamType.DataStruct,
          true,
          structBuilder: TokensStruct.fromSerializableMap,
        ),
        total: deserializeParam(
          data['total'],
          ParamType.double,
          false,
        ),
        totalSol: deserializeParam(
          data['totalSol'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'TestoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is TestoStruct &&
        listEquality.equals(tokens, other.tokens) &&
        total == other.total &&
        totalSol == other.totalSol;
  }

  @override
  int get hashCode => const ListEquality().hash([tokens, total, totalSol]);
}

TestoStruct createTestoStruct({
  double? total,
  double? totalSol,
}) =>
    TestoStruct(
      total: total,
      totalSol: totalSol,
    );
