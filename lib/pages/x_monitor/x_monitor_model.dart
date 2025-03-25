import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/index.dart';
import 'x_monitor_widget.dart' show XMonitorWidget;
import 'package:flutter/material.dart';

class XMonitorModel extends FlutterFlowModel<XMonitorWidget> {
  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimerr;
  InstantTimer? instantTimerrrrrrr;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimerr?.cancel();
    instantTimerrrrrrr?.cancel();
  }
}
