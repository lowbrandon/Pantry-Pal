// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductInfoStruct extends BaseStruct {
  ProductInfoStruct({
    DateTime? expirationDate,
    String? productTitle,
    String? productDescription,
    String? productImage,
  })  : _expirationDate = expirationDate,
        _productTitle = productTitle,
        _productDescription = productDescription,
        _productImage = productImage;

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
}) =>
    ProductInfoStruct(
      expirationDate: expirationDate,
      productTitle: productTitle,
      productDescription: productDescription,
      productImage: productImage,
    );
