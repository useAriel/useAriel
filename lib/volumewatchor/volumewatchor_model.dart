import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/index.dart';
import 'volumewatchor_widget.dart' show VolumewatchorWidget;
import 'package:flutter/material.dart';

class VolumewatchorModel extends FlutterFlowModel<VolumewatchorWidget> {
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
