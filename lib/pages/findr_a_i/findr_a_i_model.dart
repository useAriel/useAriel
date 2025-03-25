import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/index.dart';
import 'findr_a_i_widget.dart' show FindrAIWidget;
import 'package:flutter/material.dart';

class FindrAIModel extends FlutterFlowModel<FindrAIWidget> {
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
