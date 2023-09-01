// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoginInfoStruct extends FFFirebaseStruct {
  LoginInfoStruct({
    String? username,
    String? password,
    String? email,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _username = username,
        _password = password,
        _email = email,
        super(firestoreUtilData);

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  set username(String? val) => _username = val;
  bool hasUsername() => _username != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  set password(String? val) => _password = val;
  bool hasPassword() => _password != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  static LoginInfoStruct fromMap(Map<String, dynamic> data) => LoginInfoStruct(
        username: data['username'] as String?,
        password: data['password'] as String?,
        email: data['email'] as String?,
      );

  static LoginInfoStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? LoginInfoStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'username': _username,
        'password': _password,
        'email': _email,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'username': serializeParam(
          _username,
          ParamType.String,
        ),
        'password': serializeParam(
          _password,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
      }.withoutNulls;

  static LoginInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      LoginInfoStruct(
        username: deserializeParam(
          data['username'],
          ParamType.String,
          false,
        ),
        password: deserializeParam(
          data['password'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LoginInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LoginInfoStruct &&
        username == other.username &&
        password == other.password &&
        email == other.email;
  }

  @override
  int get hashCode => const ListEquality().hash([username, password, email]);
}

LoginInfoStruct createLoginInfoStruct({
  String? username,
  String? password,
  String? email,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LoginInfoStruct(
      username: username,
      password: password,
      email: email,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LoginInfoStruct? updateLoginInfoStruct(
  LoginInfoStruct? loginInfo, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    loginInfo
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLoginInfoStructData(
  Map<String, dynamic> firestoreData,
  LoginInfoStruct? loginInfo,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (loginInfo == null) {
    return;
  }
  if (loginInfo.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && loginInfo.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final loginInfoData = getLoginInfoFirestoreData(loginInfo, forFieldValue);
  final nestedData = loginInfoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = loginInfo.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLoginInfoFirestoreData(
  LoginInfoStruct? loginInfo, [
  bool forFieldValue = false,
]) {
  if (loginInfo == null) {
    return {};
  }
  final firestoreData = mapToFirestore(loginInfo.toMap());

  // Add any Firestore field values
  loginInfo.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLoginInfoListFirestoreData(
  List<LoginInfoStruct>? loginInfos,
) =>
    loginInfos?.map((e) => getLoginInfoFirestoreData(e, true)).toList() ?? [];
