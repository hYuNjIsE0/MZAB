import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'report_model.dart';
export 'report_model.dart';

class ReportWidget extends StatefulWidget {
  const ReportWidget({Key? key}) : super(key: key);

  @override
  _ReportWidgetState createState() => _ReportWidgetState();
}

class _ReportWidgetState extends State<ReportWidget> {
  late ReportModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReportModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.getNickname = await GetNicknameCall.call(
        email: currentUserEmail,
      );
      if ((_model.getNickname?.succeeded ?? true)) {
        setState(() {
          _model.reportreload = false;
        });
      } else {
        setState(() {
          _model.reportreload = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: RichText(
            textScaleFactor: MediaQuery.of(context).textScaleFactor,
            text: TextSpan(
              children: [
                TextSpan(
                  text: getJsonField(
                    (_model.getNickname?.jsonBody ?? ''),
                    r'''$.data.nickname''',
                  ).toString(),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Outfit',
                        color: Colors.white,
                        fontSize: 27.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                TextSpan(
                  text: '의 월간 리포트',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                )
              ],
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Outfit',
                    color: Colors.white,
                  ),
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Text(
                          '2023년 11월',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Outfit',
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '일',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Text(
                    '월',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Text(
                    '화',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Text(
                    '수',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Text(
                    '목',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Text(
                    '금',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Text(
                    '토',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '29',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '30',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '31',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '1',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' +₩600000',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  color: FlutterFlowTheme.of(context).info,
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '2',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' -₩56000',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  color: FlutterFlowTheme.of(context).error,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '3',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '4',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '5',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '  -₩27500',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  color: FlutterFlowTheme.of(context).error,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '6',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '7',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '  -₩30000',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  color: FlutterFlowTheme.of(context).error,
                                  fontSize: 11.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '8',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '9',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '10',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '11',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '  -₩5100',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  color: FlutterFlowTheme.of(context).error,
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '12',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '13',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '14',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' -₩578000',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  color: FlutterFlowTheme.of(context).error,
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '15',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '16',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '17',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' +₩220000',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  color: FlutterFlowTheme.of(context).info,
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '18',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '19',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '20',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '21',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '22',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' -₩189000',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  color: FlutterFlowTheme.of(context).error,
                                  fontSize: 11.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '23',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '24',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '25',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '26',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '27',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' +₩250000',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  color: FlutterFlowTheme.of(context).info,
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '28',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '29',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '30',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '1',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '2',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            ' ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: 350.0,
                decoration: BoxDecoration(
                  color: Color(0x8195A1AC),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.network(
                      'https://img.freepik.com/premium-photo/vivid-gradient-rainbow-color-vertical-striped-abstract-background_76000-5656.jpg?size=626&ext=jpg',
                    ).image,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 10.0, 0.0, 10.0),
                        child: Text(
                          '이번달 요약',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Outfit',
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                      child: Container(
                        width: 300.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: RichText(
                            textScaleFactor:
                                MediaQuery.of(context).textScaleFactor,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '이번달 소비: ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                TextSpan(
                                  text: '₩885,600',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context).error,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  ),
                                )
                              ],
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                      child: Container(
                        width: 300.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '이번달 수입:  ₩1,070,000',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/ipad-air-select-cell-purple-202203?wid=940&hei=1112&fmt=png-alpha&.v=1645066504390',
                        width: 150.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 15.0),
                      child: Container(
                        width: 300.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            '이번달에 아이패드 한 개를\n날리셨군요!',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Text(
                  '카테고리별 지출',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Outfit',
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://mzab-bucket.s3.ap-northeast-2.amazonaws.com/piechart.png',
                  width: 300.0,
                  fit: BoxFit.cover,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  '',
                  fit: BoxFit.cover,
                ),
              ),
              RichText(
                textScaleFactor: MediaQuery.of(context).textScaleFactor,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'AI가 분석한 ',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Outfit',
                            color: FlutterFlowTheme.of(context).primary,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    TextSpan(
                      text: getJsonField(
                        (_model.getNickname?.jsonBody ?? ''),
                        r'''$.data.nickname''',
                      ).toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 23.0,
                      ),
                    ),
                    TextSpan(
                      text: '의 월간 소비, 수입',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    )
                  ],
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Outfit',
                        fontSize: 25.0,
                      ),
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 30.0),
                child: Text(
                  '\'연지\'의 이번 달 수입은 용돈이랑 알바비 합쳐서 70만원이고, 식비에 50만원, 쇼핑에 10만원, 관리비에 10만원 썼네.\n이번 달은 저축에 실패한 케이스야. 어떻게 이럴수가;;? \'연지\'야, 너 돼지력이 좀 쩌네? 이번 달은실패했지만 다음 달에는 좀 더 똑똑하게 돈을 다루자. 좀 덜 쳐먹고, 쇼핑에 좀 더 절제를 가하고, 저축을 위한 목표를 먼저 설정해보는 건 어때? 지출을 철저히 관리하면 찐으로 저축할 수 있을거야.',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Outfit',
                        fontSize: 17.0,
                      ),
                ),
              ),
            ].divide(SizedBox(height: 50.0)),
          ),
        ),
      ),
    );
  }
}
