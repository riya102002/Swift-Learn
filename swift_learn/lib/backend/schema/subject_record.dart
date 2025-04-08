import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SubjectRecord extends FirestoreRecord {
  SubjectRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "subject_name" field.
  String? _subjectName;
  String get subjectName => _subjectName ?? '';
  bool hasSubjectName() => _subjectName != null;

  void _initializeFields() {
    _subjectName = snapshotData['subject_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('subject');

  static Stream<SubjectRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SubjectRecord.fromSnapshot(s));

  static Future<SubjectRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SubjectRecord.fromSnapshot(s));

  static SubjectRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SubjectRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SubjectRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SubjectRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SubjectRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SubjectRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSubjectRecordData({
  String? subjectName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'subject_name': subjectName,
    }.withoutNulls,
  );

  return firestoreData;
}

class SubjectRecordDocumentEquality implements Equality<SubjectRecord> {
  const SubjectRecordDocumentEquality();

  @override
  bool equals(SubjectRecord? e1, SubjectRecord? e2) {
    return e1?.subjectName == e2?.subjectName;
  }

  @override
  int hash(SubjectRecord? e) => const ListEquality().hash([e?.subjectName]);

  @override
  bool isValidKey(Object? o) => o is SubjectRecord;
}
