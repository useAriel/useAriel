import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/index.dart';
import 'volume_watch_widget.dart' show VolumeWatchWidget;
import 'package:flutter/material.dart';

class VolumeWatchModel extends FlutterFlowModel<VolumeWatchWidget> {
  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimerr;
  InstantTimer? instantTimerrrrrr;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimerr?.cancel();
    instantTimerrrrrr?.cancel();
  }
}
