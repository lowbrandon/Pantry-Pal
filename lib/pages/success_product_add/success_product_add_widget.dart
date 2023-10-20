import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'success_product_add_model.dart';
export 'success_product_add_model.dart';

class SuccessProductAddWidget extends StatefulWidget {
  const SuccessProductAddWidget({Key? key}) : super(key: key);

  @override
  _SuccessProductAddWidgetState createState() =>
      _SuccessProductAddWidgetState();
}

class _SuccessProductAddWidgetState extends State<SuccessProductAddWidget> {
  late SuccessProductAddModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SuccessProductAddModel());
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
        backgroundColor: FlutterFlowTheme.of(context).secondary,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.network(
                      'https://assets10.lottiefiles.com/packages/lf20_xlkxtmul.json',
                      width: 200.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                      frameRate: FrameRate(60.0),
                      repeat: false,
                      animate: true,
                    ),
                  ],
                ),
              ),
              Text(
                'Product Added!',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Lexend Deca',
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      fontSize: 32.0,
                    ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                child: Text(
                  'Item successfully stored.',
                  style: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Lexend Deca',
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 44.0, 12.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.goNamed(
                          'Product_Add_Transition_Page',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                            ),
                          },
                        );
                      },
                      text: 'Add Another',
                      options: FFButtonOptions(
                        width: 150.0,
                        height: MediaQuery.sizeOf(context).height * 0.05,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Lexend Deca',
                                  color: FlutterFlowTheme.of(context).secondary,
                                ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 36.0, 0.0, 0.0),
                    child: Text(
                      'or',
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Lexend Deca',
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 44.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.goNamed(
                          'Produce_List',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                            ),
                          },
                        );
                      },
                      text: 'Return to Pantry',
                      options: FFButtonOptions(
                        width: 150.0,
                        height: MediaQuery.sizeOf(context).height * 0.05,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Lexend Deca',
                                  color: FlutterFlowTheme.of(context).secondary,
                                ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
