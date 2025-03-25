import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/index.dart';
import 'findraiiiiiii_widget.dart' show FindraiiiiiiiWidget;
import 'package:flutter/material.dart';

class FindraiiiiiiiModel extends FlutterFlowModel<FindraiiiiiiiWidget> {
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
