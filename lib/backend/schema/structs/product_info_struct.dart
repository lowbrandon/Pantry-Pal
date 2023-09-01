// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductInfoStruct extends FFFirebaseStruct {
  ProductInfoStruct({
    DateTime? expirationDate,
    String? productTitle,
    String? productDescription,
    String? productImage,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _expirationDate = expirationDate,
        _productTitle = productTitle,
        _productDescription = productDescription,
        _productImage = productImage,
        super(firestoreUtilData);

  // "expiration_date" field.
  DateTime? _expirationDate;
  DateTime? get expirationDate => _expirationDate;
  set expirationDate(DateTime? val) => _expirationDate = val;
  bool hasExpirationDate() => _expirationDate != null;

  // "product_title" field.
  String? _productTitle;
  String get productTitle => _productTitle ?? '';
  set productTitle(String? val) => _productTitle = val;
  bool hasProductTitle() => _productTitle != null;

  // "product_description" field.
  String? _productDescription;
  String get productDescription => _productDescription ?? '';
  set productDescription(String? val) => _productDescription = val;
  bool hasProductDescription() => _productDescription != null;

  // "product_image" field.
  String? _productImage;
  String get productImage => _productImage ?? '';
  set productImage(String? val) => _productImage = val;
  bool hasProductImage() => _productImage != null;

  static ProductInfoStruct fromMap(Map<String, dynamic> data) =>
      ProductInfoStruct(
        expirationDate: data['expiration_date'] as DateTime?,
        productTitle: data['product_title'] as String?,
        productDescription: data['product_description'] as String?,
        productImage: data['product_image'] as String?,
      );

  static ProductInfoStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ProductInfoStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'expiration_date': _expirationDate,
        'product_title': _productTitle,
        'product_description': _productDescription,
        'product_image': _productImage,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'expiration_date': serializeParam(
          _expirationDate,
          ParamType.DateTime,
        ),
        'product_title': serializeParam(
          _productTitle,
          ParamType.String,
        ),
        'product_description': serializeParam(
          _productDescription,
          ParamType.String,
        ),
        'product_image': serializeParam(
          _productImage,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProductInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductInfoStruct(
        expirationDate: deserializeParam(
          data['expiration_date'],
          ParamType.DateTime,
          false,
        ),
        productTitle: deserializeParam(
          data['product_title'],
          ParamType.String,
          false,
        ),
        productDescription: deserializeParam(
          data['product_description'],
          ParamType.String,
          false,
        ),
        productImage: deserializeParam(
          data['product_image'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProductInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductInfoStruct &&
        expirationDate == other.expirationDate &&
        productTitle == other.productTitle &&
        productDescription == other.productDescription &&
        productImage == other.productImage;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([expirationDate, productTitle, productDescription, productImage]);
}

ProductInfoStruct createProductInfoStruct({
  DateTime? expirationDate,
  String? productTitle,
  String? productDescription,
  String? productImage,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProductInfoStruct(
      expirationDate: expirationDate,
      productTitle: productTitle,
      productDescription: productDescription,
      productImage: productImage,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProductInfoStruct? updateProductInfoStruct(
  ProductInfoStruct? productInfo, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    productInfo
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProductInfoStructData(
  Map<String, dynamic> firestoreData,
  ProductInfoStruct? productInfo,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (productInfo == null) {
    return;
  }
  if (productInfo.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && productInfo.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final productInfoData =
      getProductInfoFirestoreData(productInfo, forFieldValue);
  final nestedData =
      productInfoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = productInfo.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProductInfoFirestoreData(
  ProductInfoStruct? productInfo, [
  bool forFieldValue = false,
]) {
  if (productInfo == null) {
    return {};
  }
  final firestoreData = mapToFirestore(productInfo.toMap());

  // Add any Firestore field values
  productInfo.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProductInfoListFirestoreData(
  List<ProductInfoStruct>? productInfos,
) =>
    productInfos?.map((e) => getProductInfoFirestoreData(e, true)).toList() ??
    [];
