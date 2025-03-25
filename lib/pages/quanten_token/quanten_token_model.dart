import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/index.dart';
import 'quanten_token_widget.dart' show QuantenTokenWidget;
import 'package:flutter/material.dart';

class QuantenTokenModel extends FlutterFlowModel<QuantenTokenWidget> {
  ///  Local state fields for this page.

  String answ = 'Thinking...';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (TokenInsight)] action in QuantenToken widget.
  ApiCallResponse? apiResulToken;
  // Stores action output result for [Backend Call - API (Token Analyzer)] action in QuantenToken widget.
  ApiCallResponse? apiResultToken02;
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
