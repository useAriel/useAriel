// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AltcoinzStruct extends BaseStruct {
  AltcoinzStruct({
    GetBTCStruct? btc,
    GetETHStruct? eth,
    GetXRPStruct? xrp,
    GetBNBStruct? bnb,
    GetSOLStruct? sol,
  })  : _btc = btc,
        _eth = eth,
        _xrp = xrp,
        _bnb = bnb,
        _sol = sol;

  // "BTC" field.
  GetBTCStruct? _btc;
  GetBTCStruct get btc => _btc ?? GetBTCStruct();
  set btc(GetBTCStruct? val) => _btc = val;

  void updateBtc(Function(GetBTCStruct) updateFn) {
    updateFn(_btc ??= GetBTCStruct());
  }

  bool hasBtc() => _btc != null;

  // "ETH" field.
  GetETHStruct? _eth;
  GetETHStruct get eth => _eth ?? GetETHStruct();
  set eth(GetETHStruct? val) => _eth = val;

  void updateEth(Function(GetETHStruct) updateFn) {
    updateFn(_eth ??= GetETHStruct());
  }

  bool hasEth() => _eth != null;

  // "XRP" field.
  GetXRPStruct? _xrp;
  GetXRPStruct get xrp => _xrp ?? GetXRPStruct();
  set xrp(GetXRPStruct? val) => _xrp = val;

  void updateXrp(Function(GetXRPStruct) updateFn) {
    updateFn(_xrp ??= GetXRPStruct());
  }

  bool hasXrp() => _xrp != null;

  // "BNB" field.
  GetBNBStruct? _bnb;
  GetBNBStruct get bnb => _bnb ?? GetBNBStruct();
  set bnb(GetBNBStruct? val) => _bnb = val;

  void updateBnb(Function(GetBNBStruct) updateFn) {
    updateFn(_bnb ??= GetBNBStruct());
  }

  bool hasBnb() => _bnb != null;

  // "SOL" field.
  GetSOLStruct? _sol;
  GetSOLStruct get sol => _sol ?? GetSOLStruct();
  set sol(GetSOLStruct? val) => _sol = val;

  void updateSol(Function(GetSOLStruct) updateFn) {
    updateFn(_sol ??= GetSOLStruct());
  }

  bool hasSol() => _sol != null;

  static AltcoinzStruct fromMap(Map<String, dynamic> data) => AltcoinzStruct(
        btc: data['BTC'] is GetBTCStruct
            ? data['BTC']
            : GetBTCStruct.maybeFromMap(data['BTC']),
        eth: data['ETH'] is GetETHStruct
            ? data['ETH']
            : GetETHStruct.maybeFromMap(data['ETH']),
        xrp: data['XRP'] is GetXRPStruct
            ? data['XRP']
            : GetXRPStruct.maybeFromMap(data['XRP']),
        bnb: data['BNB'] is GetBNBStruct
            ? data['BNB']
            : GetBNBStruct.maybeFromMap(data['BNB']),
        sol: data['SOL'] is GetSOLStruct
            ? data['SOL']
            : GetSOLStruct.maybeFromMap(data['SOL']),
      );

  static AltcoinzStruct? maybeFromMap(dynamic data) =>
      data is Map ? AltcoinzStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'BTC': _btc?.toMap(),
        'ETH': _eth?.toMap(),
        'XRP': _xrp?.toMap(),
        'BNB': _bnb?.toMap(),
        'SOL': _sol?.toMap(),
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
        'XRP': serializeParam(
          _xrp,
          ParamType.DataStruct,
        ),
        'BNB': serializeParam(
          _bnb,
          ParamType.DataStruct,
        ),
        'SOL': serializeParam(
          _sol,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static AltcoinzStruct fromSerializableMap(Map<String, dynamic> data) =>
      AltcoinzStruct(
        btc: deserializeStructParam(
          data['BTC'],
          ParamType.DataStruct,
          false,
          structBuilder: GetBTCStruct.fromSerializableMap,
        ),
        eth: deserializeStructParam(
          data['ETH'],
          ParamType.DataStruct,
          false,
          structBuilder: GetETHStruct.fromSerializableMap,
        ),
        xrp: deserializeStructParam(
          data['XRP'],
          ParamType.DataStruct,
          false,
          structBuilder: GetXRPStruct.fromSerializableMap,
        ),
        bnb: deserializeStructParam(
          data['BNB'],
          ParamType.DataStruct,
          false,
          structBuilder: GetBNBStruct.fromSerializableMap,
        ),
        sol: deserializeStructParam(
          data['SOL'],
          ParamType.DataStruct,
          false,
          structBuilder: GetSOLStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AltcoinzStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AltcoinzStruct &&
        btc == other.btc &&
        eth == other.eth &&
        xrp == other.xrp &&
        bnb == other.bnb &&
        sol == other.sol;
  }

  @override
  int get hashCode => const ListEquality().hash([btc, eth, xrp, bnb, sol]);
}

AltcoinzStruct createAltcoinzStruct({
  GetBTCStruct? btc,
  GetETHStruct? eth,
  GetXRPStruct? xrp,
  GetBNBStruct? bnb,
  GetSOLStruct? sol,
}) =>
    AltcoinzStruct(
      btc: btc ?? GetBTCStruct(),
      eth: eth ?? GetETHStruct(),
      xrp: xrp ?? GetXRPStruct(),
      bnb: bnb ?? GetBNBStruct(),
      sol: sol ?? GetSOLStruct(),
    );
