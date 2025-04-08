import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ModuleRecord extends FirestoreRecord {
  ModuleRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "module_name" field.
  String? _moduleName;
  String get moduleName => _moduleName ?? '';
  bool hasModuleName() => _moduleName != null;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  bool hasOrder() => _order != null;

  void _initializeFields() {
    _moduleName = snapshotData['module_name'] as String?;
    _order = castToType<int>(snapshotData['order']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('module');

  static Stream<ModuleRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ModuleRecord.fromSnapshot(s));

  static Future<ModuleRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ModuleRecord.fromSnapshot(s));

  static ModuleRecord fromSnapshot(DocumentSnapshot snapshot) => ModuleRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ModuleRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ModuleRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ModuleRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ModuleRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createModuleRecordData({
  String? moduleName,
  int? order,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'module_name': moduleName,
      'order': order,
    }.withoutNulls,
  );

  return firestoreData;
}

class ModuleRecordDocumentEquality implements Equality<ModuleRecord> {
  const ModuleRecordDocumentEquality();

  @override
  bool equals(ModuleRecord? e1, ModuleRecord? e2) {
    return e1?.moduleName == e2?.moduleName && e1?.order == e2?.order;
  }

  @override
  int hash(ModuleRecord? e) =>
      const ListEquality().hash([e?.moduleName, e?.order]);

  @override
  bool isValidKey(Object? o) => o is ModuleRecord;
}
