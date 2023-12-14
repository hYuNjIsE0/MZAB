import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/enter_friends_room_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'friends_widget.dart' show FriendsWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FriendsModel extends FlutterFlowModel<FriendsWidget> {
  ///  Local state fields for this page.

  bool friendsreload = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getNickname)] action in Friends widget.
  ApiCallResponse? getNickname;
  // State field(s) for roomName widget.
  FocusNode? roomNameFocusNode;
  TextEditingController? roomNameController;
  String? Function(BuildContext, String?)? roomNameControllerValidator;
  // State field(s) for roomDescription widget.
  FocusNode? roomDescriptionFocusNode;
  TextEditingController? roomDescriptionController;
  String? Function(BuildContext, String?)? roomDescriptionControllerValidator;
  // State field(s) for roomPassword widget.
  FocusNode? roomPasswordFocusNode;
  TextEditingController? roomPasswordController;
  String? Function(BuildContext, String?)? roomPasswordControllerValidator;
  // Stores action output result for [Backend Call - API (makeFriendsRoom)] action in Button widget.
  ApiCallResponse? makeFriendsRoom;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    roomNameFocusNode?.dispose();
    roomNameController?.dispose();

    roomDescriptionFocusNode?.dispose();
    roomDescriptionController?.dispose();

    roomPasswordFocusNode?.dispose();
    roomPasswordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
