import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotesRecord extends FirestoreRecord {
  NotesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "subject_name" field.
  String? _subjectName;
  String get subjectName => _subjectName ?? '';
  bool hasSubjectName() => _subjectName != null;

  // "teacher_name" field.
  String? _teacherName;
  String get teacherName => _teacherName ?? '';
  bool hasTeacherName() => _teacherName != null;

  // "date_of_upload" field.
  DateTime? _dateOfUpload;
  DateTime? get dateOfUpload => _dateOfUpload;
  bool hasDateOfUpload() => _dateOfUpload != null;

  // "file" field.
  String? _file;
  String get file => _file ?? '';
  bool hasFile() => _file != null;

  // "module" field.
  String? _module;
  String get module => _module ?? '';
  bool hasModule() => _module != null;

  // "unit_number" field.
  String? _unitNumber;
  String get unitNumber => _unitNumber ?? '';
  bool hasUnitNumber() => _unitNumber != null;

  void _initializeFields() {
    _subjectName = snapshotData['subject_name'] as String?;
    _teacherName = snapshotData['teacher_name'] as String?;
    _dateOfUpload = snapshotData['date_of_upload'] as DateTime?;
    _file = snapshotData['file'] as String?;
    _module = snapshotData['module'] as String?;
    _unitNumber = snapshotData['unit_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notes');

  static Stream<NotesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotesRecord.fromSnapshot(s));

  static Future<NotesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotesRecord.fromSnapshot(s));

  static NotesRecord fromSnapshot(DocumentSnapshot snapshot) => NotesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotesRecordData({
  String? subjectName,
  String? teacherName,
  DateTime? dateOfUpload,
  String? file,
  String? module,
  String? unitNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'subject_name': subjectName,
      'teacher_name': teacherName,
      'date_of_upload': dateOfUpload,
      'file': file,
      'module': module,
      'unit_number': unitNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotesRecordDocumentEquality implements Equality<NotesRecord> {
  const NotesRecordDocumentEquality();

  @override
  bool equals(NotesRecord? e1, NotesRecord? e2) {
    return e1?.subjectName == e2?.subjectName &&
        e1?.teacherName == e2?.teacherName &&
        e1?.dateOfUpload == e2?.dateOfUpload &&
        e1?.file == e2?.file &&
        e1?.module == e2?.module &&
        e1?.unitNumber == e2?.unitNumber;
  }

  @override
  int hash(NotesRecord? e) => const ListEquality().hash([
        e?.subjectName,
        e?.teacherName,
        e?.dateOfUpload,
        e?.file,
        e?.module,
        e?.unitNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is NotesRecord;
}
