import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StockRecord extends FirestoreRecord {
  StockRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "stock_name" field.
  String? _stockName;
  String get stockName => _stockName ?? '';
  bool hasStockName() => _stockName != null;

  // "stock_type" field.
  String? _stockType;
  String get stockType => _stockType ?? '';
  bool hasStockType() => _stockType != null;

  // "stock_image" field.
  String? _stockImage;
  String get stockImage => _stockImage ?? '';
  bool hasStockImage() => _stockImage != null;

  // "stock_barcode" field.
  String? _stockBarcode;
  String get stockBarcode => _stockBarcode ?? '';
  bool hasStockBarcode() => _stockBarcode != null;

  // "stock_storage_information" field.
  String? _stockStorageInformation;
  String get stockStorageInformation => _stockStorageInformation ?? '';
  bool hasStockStorageInformation() => _stockStorageInformation != null;

  void _initializeFields() {
    _stockName = snapshotData['stock_name'] as String?;
    _stockType = snapshotData['stock_type'] as String?;
    _stockImage = snapshotData['stock_image'] as String?;
    _stockBarcode = snapshotData['stock_barcode'] as String?;
    _stockStorageInformation =
        snapshotData['stock_storage_information'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('stock');

  static Stream<StockRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StockRecord.fromSnapshot(s));

  static Future<StockRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StockRecord.fromSnapshot(s));

  static StockRecord fromSnapshot(DocumentSnapshot snapshot) => StockRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StockRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StockRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StockRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StockRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStockRecordData({
  String? stockName,
  String? stockType,
  String? stockImage,
  String? stockBarcode,
  String? stockStorageInformation,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'stock_name': stockName,
      'stock_type': stockType,
      'stock_image': stockImage,
      'stock_barcode': stockBarcode,
      'stock_storage_information': stockStorageInformation,
    }.withoutNulls,
  );

  return firestoreData;
}

class StockRecordDocumentEquality implements Equality<StockRecord> {
  const StockRecordDocumentEquality();

  @override
  bool equals(StockRecord? e1, StockRecord? e2) {
    return e1?.stockName == e2?.stockName &&
        e1?.stockType == e2?.stockType &&
        e1?.stockImage == e2?.stockImage &&
        e1?.stockBarcode == e2?.stockBarcode &&
        e1?.stockStorageInformation == e2?.stockStorageInformation;
  }

  @override
  int hash(StockRecord? e) => const ListEquality().hash([
        e?.stockName,
        e?.stockType,
        e?.stockImage,
        e?.stockBarcode,
        e?.stockStorageInformation
      ]);

  @override
  bool isValidKey(Object? o) => o is StockRecord;
}
