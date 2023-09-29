import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VesselRecord extends FirestoreRecord {
  VesselRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "length" field.
  double? _length;
  double get length => _length ?? 0.0;
  bool hasLength() => _length != null;

  // "speed" field.
  double? _speed;
  double get speed => _speed ?? 0.0;
  bool hasSpeed() => _speed != null;

  // "vessel_heading" field.
  double? _vesselHeading;
  double get vesselHeading => _vesselHeading ?? 0.0;
  bool hasVesselHeading() => _vesselHeading != null;

  // "vessel_feedlink" field.
  String? _vesselFeedlink;
  String get vesselFeedlink => _vesselFeedlink ?? '';
  bool hasVesselFeedlink() => _vesselFeedlink != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "vessel_id" field.
  String? _vesselId;
  String get vesselId => _vesselId ?? '';
  bool hasVesselId() => _vesselId != null;

  // "vessel_status" field.
  String? _vesselStatus;
  String get vesselStatus => _vesselStatus ?? '';
  bool hasVesselStatus() => _vesselStatus != null;

  // "vessel_heading_string" field.
  String? _vesselHeadingString;
  String get vesselHeadingString => _vesselHeadingString ?? '';
  bool hasVesselHeadingString() => _vesselHeadingString != null;

  // "vessel_battery" field.
  int? _vesselBattery;
  int get vesselBattery => _vesselBattery ?? 0;
  bool hasVesselBattery() => _vesselBattery != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _length = castToType<double>(snapshotData['length']);
    _speed = castToType<double>(snapshotData['speed']);
    _vesselHeading = castToType<double>(snapshotData['vessel_heading']);
    _vesselFeedlink = snapshotData['vessel_feedlink'] as String?;
    _userId = snapshotData['user_id'] as DocumentReference?;
    _vesselId = snapshotData['vessel_id'] as String?;
    _vesselStatus = snapshotData['vessel_status'] as String?;
    _vesselHeadingString = snapshotData['vessel_heading_string'] as String?;
    _vesselBattery = castToType<int>(snapshotData['vessel_battery']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Vessel');

  static Stream<VesselRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VesselRecord.fromSnapshot(s));

  static Future<VesselRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VesselRecord.fromSnapshot(s));

  static VesselRecord fromSnapshot(DocumentSnapshot snapshot) => VesselRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VesselRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VesselRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VesselRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VesselRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVesselRecordData({
  String? name,
  double? length,
  double? speed,
  double? vesselHeading,
  String? vesselFeedlink,
  DocumentReference? userId,
  String? vesselId,
  String? vesselStatus,
  String? vesselHeadingString,
  int? vesselBattery,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'length': length,
      'speed': speed,
      'vessel_heading': vesselHeading,
      'vessel_feedlink': vesselFeedlink,
      'user_id': userId,
      'vessel_id': vesselId,
      'vessel_status': vesselStatus,
      'vessel_heading_string': vesselHeadingString,
      'vessel_battery': vesselBattery,
    }.withoutNulls,
  );

  return firestoreData;
}

class VesselRecordDocumentEquality implements Equality<VesselRecord> {
  const VesselRecordDocumentEquality();

  @override
  bool equals(VesselRecord? e1, VesselRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.length == e2?.length &&
        e1?.speed == e2?.speed &&
        e1?.vesselHeading == e2?.vesselHeading &&
        e1?.vesselFeedlink == e2?.vesselFeedlink &&
        e1?.userId == e2?.userId &&
        e1?.vesselId == e2?.vesselId &&
        e1?.vesselStatus == e2?.vesselStatus &&
        e1?.vesselHeadingString == e2?.vesselHeadingString &&
        e1?.vesselBattery == e2?.vesselBattery;
  }

  @override
  int hash(VesselRecord? e) => const ListEquality().hash([
        e?.name,
        e?.length,
        e?.speed,
        e?.vesselHeading,
        e?.vesselFeedlink,
        e?.userId,
        e?.vesselId,
        e?.vesselStatus,
        e?.vesselHeadingString,
        e?.vesselBattery
      ]);

  @override
  bool isValidKey(Object? o) => o is VesselRecord;
}
