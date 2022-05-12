import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'sets_record.g.dart';

abstract class SetsRecord implements Built<SetsRecord, SetsRecordBuilder> {
  static Serializer<SetsRecord> get serializer => _$setsRecordSerializer;

  @nullable
  int get set;

  @nullable
  int get reps;

  @nullable
  int get weight;

  @nullable
  String get liftname;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(SetsRecordBuilder builder) => builder
    ..set = 0
    ..reps = 0
    ..weight = 0
    ..liftname = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sets');

  static Stream<SetsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<SetsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  SetsRecord._();
  factory SetsRecord([void Function(SetsRecordBuilder) updates]) = _$SetsRecord;

  static SetsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createSetsRecordData({
  int set,
  int reps,
  int weight,
  String liftname,
}) =>
    serializers.toFirestore(
        SetsRecord.serializer,
        SetsRecord((s) => s
          ..set = set
          ..reps = reps
          ..weight = weight
          ..liftname = liftname));
