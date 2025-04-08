import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UnitNumberRecord extends FirestoreRecord {
  UnitNumberRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "unit_number" field.
  String? _unitNumber;
  String get unitNumber => _unitNumber ?? '';
  bool hasUnitNumber() => _unitNumber != null;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  bool hasOrder() => _order != null;

  void _initializeFields() {
    _unitNumber = snapshotData['unit_number'] as String?;
    _order = castToType<int>(snapshotData['order']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('unit_number');

  static Stream<UnitNumberRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UnitNumberRecord.fromSnapshot(s));

  static Future<UnitNumberRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UnitNumberRecord.fromSnapshot(s));

  static UnitNumberRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UnitNumberRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UnitNumberRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UnitNumberRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UnitNumberRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UnitNumberRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUnitNumberRecordData({
  String? unitNumber,
  int? order,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'unit_number': unitNumber,
      'order': order,
    }.withoutNulls,
  );

  return firestoreData;
}

class UnitNumberRecordDocumentEquality implements Equality<UnitNumberRecord> {
  const UnitNumberRecordDocumentEquality();

  @override
  bool equals(UnitNumberRecord? e1, UnitNumberRecord? e2) {
    return e1?.unitNumber == e2?.unitNumber && e1?.order == e2?.order;
  }

  @override
  int hash(UnitNumberRecord? e) =>
      const ListEquality().hash([e?.unitNumber, e?.order]);

  @override
  bool isValidKey(Object? o) => o is UnitNumberRecord;
}
