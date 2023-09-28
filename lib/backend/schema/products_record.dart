import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsRecord extends FirestoreRecord {
  ProductsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "product_name" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "product_type" field.
  String? _productType;
  String get productType => _productType ?? '';
  bool hasProductType() => _productType != null;

  // "product_expiration_date" field.
  DateTime? _productExpirationDate;
  DateTime? get productExpirationDate => _productExpirationDate;
  bool hasProductExpirationDate() => _productExpirationDate != null;

  // "product_image" field.
  String? _productImage;
  String get productImage => _productImage ?? '';
  bool hasProductImage() => _productImage != null;

  // "product_barcode" field.
  String? _productBarcode;
  String get productBarcode => _productBarcode ?? '';
  bool hasProductBarcode() => _productBarcode != null;

  // "product_storage_information" field.
  String? _productStorageInformation;
  String get productStorageInformation => _productStorageInformation ?? '';
  bool hasProductStorageInformation() => _productStorageInformation != null;

  // "product_owner_email" field.
  String? _productOwnerEmail;
  String get productOwnerEmail => _productOwnerEmail ?? '';
  bool hasProductOwnerEmail() => _productOwnerEmail != null;

  // "product_owner_display_name" field.
  String? _productOwnerDisplayName;
  String get productOwnerDisplayName => _productOwnerDisplayName ?? '';
  bool hasProductOwnerDisplayName() => _productOwnerDisplayName != null;

  // "product_creator_UID" field.
  String? _productCreatorUID;
  String get productCreatorUID => _productCreatorUID ?? '';
  bool hasProductCreatorUID() => _productCreatorUID != null;

  void _initializeFields() {
    _productName = snapshotData['product_name'] as String?;
    _productType = snapshotData['product_type'] as String?;
    _productExpirationDate =
        snapshotData['product_expiration_date'] as DateTime?;
    _productImage = snapshotData['product_image'] as String?;
    _productBarcode = snapshotData['product_barcode'] as String?;
    _productStorageInformation =
        snapshotData['product_storage_information'] as String?;
    _productOwnerEmail = snapshotData['product_owner_email'] as String?;
    _productOwnerDisplayName =
        snapshotData['product_owner_display_name'] as String?;
    _productCreatorUID = snapshotData['product_creator_UID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductsRecord.fromSnapshot(s));

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductsRecord.fromSnapshot(s));

  static ProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductsRecordData({
  String? productName,
  String? productType,
  DateTime? productExpirationDate,
  String? productImage,
  String? productBarcode,
  String? productStorageInformation,
  String? productOwnerEmail,
  String? productOwnerDisplayName,
  String? productCreatorUID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'product_name': productName,
      'product_type': productType,
      'product_expiration_date': productExpirationDate,
      'product_image': productImage,
      'product_barcode': productBarcode,
      'product_storage_information': productStorageInformation,
      'product_owner_email': productOwnerEmail,
      'product_owner_display_name': productOwnerDisplayName,
      'product_creator_UID': productCreatorUID,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductsRecordDocumentEquality implements Equality<ProductsRecord> {
  const ProductsRecordDocumentEquality();

  @override
  bool equals(ProductsRecord? e1, ProductsRecord? e2) {
    return e1?.productName == e2?.productName &&
        e1?.productType == e2?.productType &&
        e1?.productExpirationDate == e2?.productExpirationDate &&
        e1?.productImage == e2?.productImage &&
        e1?.productBarcode == e2?.productBarcode &&
        e1?.productStorageInformation == e2?.productStorageInformation &&
        e1?.productOwnerEmail == e2?.productOwnerEmail &&
        e1?.productOwnerDisplayName == e2?.productOwnerDisplayName &&
        e1?.productCreatorUID == e2?.productCreatorUID;
  }

  @override
  int hash(ProductsRecord? e) => const ListEquality().hash([
        e?.productName,
        e?.productType,
        e?.productExpirationDate,
        e?.productImage,
        e?.productBarcode,
        e?.productStorageInformation,
        e?.productOwnerEmail,
        e?.productOwnerDisplayName,
        e?.productCreatorUID
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductsRecord;
}
