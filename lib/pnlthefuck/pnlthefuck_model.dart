import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/index.dart';
import 'pnlthefuck_widget.dart' show PnlthefuckWidget;
import 'package:flutter/material.dart';

class PnlthefuckModel extends FlutterFlowModel<PnlthefuckWidget> {
  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimerr;
  InstantTimer? instantTimerrr;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimerr?.cancel();
    instantTimerrr?.cancel();
  }
}
