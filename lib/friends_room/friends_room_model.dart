import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'friends_room_widget.dart' show FriendsRoomWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FriendsRoomModel extends FlutterFlowModel<FriendsRoomWidget> {
  ///  Local state fields for this page.

  bool lookRoom = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getFriendsRoomDetails)] action in FriendsRoom widget.
  ApiCallResponse? getFriendsRoomDetails;
  // State field(s) for commentEating widget.
  FocusNode? commentEatingFocusNode1;
  TextEditingController? commentEatingController1;
  String? Function(BuildContext, String?)? commentEatingController1Validator;
  // Stores action output result for [Backend Call - API (postComment)] action in IconButton widget.
  ApiCallResponse? postComment;
  // State field(s) for commentEating widget.
  FocusNode? commentEatingFocusNode2;
  TextEditingController? commentEatingController2;
  String? Function(BuildContext, String?)? commentEatingController2Validator;
  // Stores action output result for [Backend Call - API (postComment)] action in IconButton widget.
  ApiCallResponse? postComment2;
  // State field(s) for commentEating widget.
  FocusNode? commentEatingFocusNode3;
  TextEditingController? commentEatingController3;
  String? Function(BuildContext, String?)? commentEatingController3Validator;
  // Stores action output result for [Backend Call - API (postComment)] action in IconButton widget.
  ApiCallResponse? postComment3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    commentEatingFocusNode1?.dispose();
    commentEatingController1?.dispose();

    commentEatingFocusNode2?.dispose();
    commentEatingController2?.dispose();

    commentEatingFocusNode3?.dispose();
    commentEatingController3?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
