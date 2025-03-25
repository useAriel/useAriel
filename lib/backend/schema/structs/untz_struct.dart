// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UntzStruct extends BaseStruct {
  UntzStruct({
    BtcStruct? btc,
    EthStruct? eth,
    SolStruct? sol,
    BnbStruct? bnb,
    XrpStruct? xrp,
  })  : _btc = btc,
        _eth = eth,
        _sol = sol,
        _bnb = bnb,
        _xrp = xrp;

  // "BTC" field.
  BtcStruct? _btc;
  BtcStruct get btc => _btc ?? BtcStruct();
  set btc(BtcStruct? val) => _btc = val;

  void updateBtc(Function(BtcStruct) updateFn) {
    updateFn(_btc ??= BtcStruct());
  }

  bool hasBtc() => _btc != null;

  // "ETH" field.
  EthStruct? _eth;
  EthStruct get eth => _eth ?? EthStruct();
  set eth(EthStruct? val) => _eth = val;

  void updateEth(Function(EthStruct) updateFn) {
    updateFn(_eth ??= EthStruct());
  }

  bool hasEth() => _eth != null;

  // "SOL" field.
  SolStruct? _sol;
  SolStruct get sol => _sol ?? SolStruct();
  set sol(SolStruct? val) => _sol = val;

  void updateSol(Function(SolStruct) updateFn) {
    updateFn(_sol ??= SolStruct());
  }

  bool hasSol() => _sol != null;

  // "BNB" field.
  BnbStruct? _bnb;
  BnbStruct get bnb => _bnb ?? BnbStruct();
  set bnb(BnbStruct? val) => _bnb = val;

  void updateBnb(Function(BnbStruct) updateFn) {
    updateFn(_bnb ??= BnbStruct());
  }

  bool hasBnb() => _bnb != null;

  // "XRP" field.
  XrpStruct? _xrp;
  XrpStruct get xrp => _xrp ?? XrpStruct();
  set xrp(XrpStruct? val) => _xrp = val;

  void updateXrp(Function(XrpStruct) updateFn) {
    updateFn(_xrp ??= XrpStruct());
  }

  bool hasXrp() => _xrp != null;

  static UntzStruct fromMap(Map<String, dynamic> data) => UntzStruct(
        btc: data['BTC'] is BtcStruct
            ? data['BTC']
            : BtcStruct.maybeFromMap(data['BTC']),
        eth: data['ETH'] is EthStruct
            ? data['ETH']
            : EthStruct.maybeFromMap(data['ETH']),
        sol: data['SOL'] is SolStruct
            ? data['SOL']
            : SolStruct.maybeFromMap(data['SOL']),
        bnb: data['BNB'] is BnbStruct
            ? data['BNB']
            : BnbStruct.maybeFromMap(data['BNB']),
        xrp: data['XRP'] is XrpStruct
            ? data['XRP']
            : XrpStruct.maybeFromMap(data['XRP']),
      );

  static UntzStruct? maybeFromMap(dynamic data) =>
      data is Map ? UntzStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'BTC': _btc?.toMap(),
        'ETH': _eth?.toMap(),
        'SOL': _sol?.toMap(),
        'BNB': _bnb?.toMap(),
        'XRP': _xrp?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'BTC': serializeParam(
          _btc,
          ParamType.DataStruct,
        ),
        'ETH': serializeParam(
          _eth,
          ParamType.DataStruct,
        ),
        'SOL': serializeParam(
          _sol,
          ParamType.DataStruct,
        ),
        'BNB': serializeParam(
          _bnb,
          ParamType.DataStruct,
        ),
        'XRP': serializeParam(
          _xrp,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static UntzStruct fromSerializableMap(Map<String, dynamic> data) =>
      UntzStruct(
        btc: deserializeStructParam(
          data['BTC'],
          ParamType.DataStruct,
          false,
          structBuilder: BtcStruct.fromSerializableMap,
        ),
        eth: deserializeStructParam(
          data['ETH'],
          ParamType.DataStruct,
          false,
          structBuilder: EthStruct.fromSerializableMap,
        ),
        sol: deserializeStructParam(
          data['SOL'],
          ParamType.DataStruct,
          false,
          structBuilder: SolStruct.fromSerializableMap,
        ),
        bnb: deserializeStructParam(
          data['BNB'],
          ParamType.DataStruct,
          false,
          structBuilder: BnbStruct.fromSerializableMap,
        ),
        xrp: deserializeStructParam(
          data['XRP'],
          ParamType.DataStruct,
          false,
          structBuilder: XrpStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'UntzStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UntzStruct &&
        btc == other.btc &&
        eth == other.eth &&
        sol == other.sol &&
        bnb == other.bnb &&
        xrp == other.xrp;
  }

  @override
  int get hashCode => const ListEquality().hash([btc, eth, sol, bnb, xrp]);
}

UntzStruct createUntzStruct({
  BtcStruct? btc,
  EthStruct? eth,
  SolStruct? sol,
  BnbStruct? bnb,
  XrpStruct? xrp,
}) =>
    UntzStruct(
      btc: btc ?? BtcStruct(),
      eth: eth ?? EthStruct(),
      sol: sol ?? SolStruct(),
      bnb: bnb ?? BnbStruct(),
      xrp: xrp ?? XrpStruct(),
    );
