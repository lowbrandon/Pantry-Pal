import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateAccountModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for DisplayNameTextField widget.
  TextEditingController? displayNameTextFieldController;
  String? Function(BuildContext, String?)?
      displayNameTextFieldControllerValidator;
  String? _displayNameTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 3) {
      return 'Minimum of 3 Characters';
    }

    return null;
  }

  // State field(s) for EmailAddressTextField widget.
  TextEditingController? emailAddressTextFieldController;
  String? Function(BuildContext, String?)?
      emailAddressTextFieldControllerValidator;
  String? _emailAddressTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Valid Email Required';
    }
    return null;
  }

  // State field(s) for PasswordTextField widget.
  TextEditingController? passwordTextFieldController;
  late bool passwordTextFieldVisibility;
  String? Function(BuildContext, String?)? passwordTextFieldControllerValidator;
  String? _passwordTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 3) {
      return 'Minimum of 3 Characters';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    displayNameTextFieldControllerValidator =
        _displayNameTextFieldControllerValidator;
    emailAddressTextFieldControllerValidator =
        _emailAddressTextFieldControllerValidator;
    passwordTextFieldVisibility = false;
    passwordTextFieldControllerValidator =
        _passwordTextFieldControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    displayNameTextFieldController?.dispose();
    emailAddressTextFieldController?.dispose();
    passwordTextFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
