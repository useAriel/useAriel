import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/index.dart';
import 'quanten_widget.dart' show QuantenWidget;
import 'package:flutter/material.dart';

class QuantenModel extends FlutterFlowModel<QuantenWidget> {
  ///  Local state fields for this page.

  String answ = 'Thinking...';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Transactions)] action in Quanten widget.
  ApiCallResponse? apiResultroeee;
  // Stores action output result for [Backend Call - API (Send Full Prompt)] action in Quanten widget.
  ApiCallResponse? apiResult02h;
  InstantTimer? instantTimerr;
  InstantTimer? instantTimerrrrr;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimerr?.cancel();
    instantTimerrrrr?.cancel();
  }
}
