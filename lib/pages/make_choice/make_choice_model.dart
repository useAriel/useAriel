import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/index.dart';
import 'make_choice_widget.dart' show MakeChoiceWidget;
import 'package:flutter/material.dart';

class MakeChoiceModel extends FlutterFlowModel<MakeChoiceWidget> {
  ///  Local state fields for this page.

  String answ = 'Thinking...';

  String? choice;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Addy widget.
  FocusNode? addyFocusNode1;
  TextEditingController? addyTextController1;
  String? Function(BuildContext, String?)? addyTextController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  InstantTimer? instantTimerr;
  // State field(s) for Addy widget.
  FocusNode? addyFocusNode2;
  TextEditingController? addyTextController2;
  String? Function(BuildContext, String?)? addyTextController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  InstantTimer? instantTimerrrrr;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    addyFocusNode1?.dispose();
    addyTextController1?.dispose();

    textFieldFocusNode1?.dispose();
    textController2?.dispose();

    instantTimerr?.cancel();
    addyFocusNode2?.dispose();
    addyTextController2?.dispose();

    textFieldFocusNode2?.dispose();
    textController4?.dispose();

    instantTimerrrrr?.cancel();
  }
}
