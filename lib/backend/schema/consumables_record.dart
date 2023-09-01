import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConsumablesRecord extends FirestoreRecord {
  ConsumablesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "product_name" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "product_description" field.
  String? _productDescription;
  String get productDescription => _productDescription ?? '';
  bool hasProductDescription() => _productDescription != null;

  // "expiration_date" field.
  DateTime? _expirationDate;
  DateTime? get expirationDate => _expirationDate;
  bool hasExpirationDate() => _expirationDate != null;

  void _initializeFields() {
    _productName = snapshotData['product_name'] as String?;
    _productDescription = snapshotData['product_description'] as String?;
    _expirationDate = snapshotData['expiration_date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('consumables');

  static Stream<ConsumablesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ConsumablesRecord.fromSnapshot(s));

  static Future<ConsumablesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ConsumablesRecord.fromSnapshot(s));

  static ConsumablesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ConsumablesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ConsumablesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ConsumablesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ConsumablesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ConsumablesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createConsumablesRecordData({
  String? productName,
  String? productDescription,
  DateTime? expirationDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'product_name': productName,
      'product_description': productDescription,
      'expiration_date': expirationDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class ConsumablesRecordDocumentEquality implements Equality<ConsumablesRecord> {
  const ConsumablesRecordDocumentEquality();

  @override
  bool equals(ConsumablesRecord? e1, ConsumablesRecord? e2) {
    return e1?.productName == e2?.productName &&
        e1?.productDescription == e2?.productDescription &&
        e1?.expirationDate == e2?.expirationDate;
  }

  @override
  int hash(ConsumablesRecord? e) => const ListEquality()
      .hash([e?.productName, e?.productDescription, e?.expirationDate]);

  @override
  bool isValidKey(Object? o) => o is ConsumablesRecord;
}
