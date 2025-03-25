import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/index.dart';
import 'pn_l_widget.dart' show PnLWidget;
import 'package:flutter/material.dart';

class PnLModel extends FlutterFlowModel<PnLWidget> {
  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimerr;
  InstantTimer? instantTimerrrr;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimerr?.cancel();
    instantTimerrrr?.cancel();
  }
}
