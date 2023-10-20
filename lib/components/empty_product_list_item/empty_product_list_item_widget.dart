import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'empty_product_list_item_model.dart';
export 'empty_product_list_item_model.dart';

class EmptyProductListItemWidget extends StatefulWidget {
  const EmptyProductListItemWidget({Key? key}) : super(key: key);

  @override
  _EmptyProductListItemWidgetState createState() =>
      _EmptyProductListItemWidgetState();
}

class _EmptyProductListItemWidgetState
    extends State<EmptyProductListItemWidget> {
  late EmptyProductListItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyProductListItemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
      child: Container(
        width: double.infinity,
        height: 100.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0x33000000),
              offset: Offset(0.0, 1.0),
            )
          ],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.pushNamed(
                'Product_Add',
                extra: <String, dynamic>{
                  kTransitionInfoKey: TransitionInfo(
                    hasTransition: true,
                    transitionType: PageTransitionType.rightToLeft,
                  ),
                },
              );
            },
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 1.0, 1.0, 1.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6.0),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1760&q=80',
                      width: 80.0,
                      height: 80.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 4.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Add a Product',
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 20.0,
                                fontWeight: FontWeight.normal,
                              ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 8.0, 0.0),
                          child: AutoSizeText(
                            'Click here to store a new item',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Work Sans',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                      child: Icon(
                        Icons.chevron_right_rounded,
                        color: Color(0xFF57636C),
                        size: 24.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
