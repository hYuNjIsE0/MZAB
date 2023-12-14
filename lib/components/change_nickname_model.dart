import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'change_nickname_widget.dart' show ChangeNicknameWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChangeNicknameModel extends FlutterFlowModel<ChangeNicknameWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Nickname widget.
  FocusNode? nicknameFocusNode;
  TextEditingController? nicknameController;
  String? Function(BuildContext, String?)? nicknameControllerValidator;
  // Stores action output result for [Backend Call - API (changeNickname)] action in Button widget.
  ApiCallResponse? changeProfileName;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nicknameFocusNode?.dispose();
    nicknameController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
