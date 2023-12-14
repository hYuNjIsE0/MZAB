import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'enter_friends_room_widget.dart' show EnterFriendsRoomWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EnterFriendsRoomModel extends FlutterFlowModel<EnterFriendsRoomWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for FRname widget.
  FocusNode? fRnameFocusNode;
  TextEditingController? fRnameController;
  String? Function(BuildContext, String?)? fRnameControllerValidator;
  // State field(s) for FRcode widget.
  FocusNode? fRcodeFocusNode;
  TextEditingController? fRcodeController;
  String? Function(BuildContext, String?)? fRcodeControllerValidator;
  // Stores action output result for [Backend Call - API (enterFriendsRoom)] action in Button widget.
  ApiCallResponse? enterFriendsRoom;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    fRnameFocusNode?.dispose();
    fRnameController?.dispose();

    fRcodeFocusNode?.dispose();
    fRcodeController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
