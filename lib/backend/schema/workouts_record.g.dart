// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workouts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WorkoutsRecord> _$workoutsRecordSerializer =
    new _$WorkoutsRecordSerializer();

class _$WorkoutsRecordSerializer
    implements StructuredSerializer<WorkoutsRecord> {
  @override
  final Iterable<Type> types = const [WorkoutsRecord, _$WorkoutsRecord];
  @override
  final String wireName = 'WorkoutsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, WorkoutsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  WorkoutsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WorkoutsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$WorkoutsRecord extends WorkoutsRecord {
  @override
  final String name;
  @override
  final DateTime date;
  @override
  final DocumentReference<Object> reference;

  factory _$WorkoutsRecord([void Function(WorkoutsRecordBuilder) updates]) =>
      (new WorkoutsRecordBuilder()..update(updates)).build();

  _$WorkoutsRecord._({this.name, this.date, this.reference}) : super._();

  @override
  WorkoutsRecord rebuild(void Function(WorkoutsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkoutsRecordBuilder toBuilder() =>
      new WorkoutsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkoutsRecord &&
        name == other.name &&
        date == other.date &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, name.hashCode), date.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WorkoutsRecord')
          ..add('name', name)
          ..add('date', date)
          ..add('reference', reference))
        .toString();
  }
}

class WorkoutsRecordBuilder
    implements Builder<WorkoutsRecord, WorkoutsRecordBuilder> {
  _$WorkoutsRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  DateTime _date;
  DateTime get date => _$this._date;
  set date(DateTime date) => _$this._date = date;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  WorkoutsRecordBuilder() {
    WorkoutsRecord._initializeBuilder(this);
  }

  WorkoutsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _date = $v.date;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkoutsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WorkoutsRecord;
  }

  @override
  void update(void Function(WorkoutsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WorkoutsRecord build() {
    final _$result = _$v ??
        new _$WorkoutsRecord._(name: name, date: date, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
