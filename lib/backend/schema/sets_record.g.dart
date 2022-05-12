// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sets_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SetsRecord> _$setsRecordSerializer = new _$SetsRecordSerializer();

class _$SetsRecordSerializer implements StructuredSerializer<SetsRecord> {
  @override
  final Iterable<Type> types = const [SetsRecord, _$SetsRecord];
  @override
  final String wireName = 'SetsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, SetsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.set;
    if (value != null) {
      result
        ..add('set')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.reps;
    if (value != null) {
      result
        ..add('reps')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.weight;
    if (value != null) {
      result
        ..add('weight')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.liftname;
    if (value != null) {
      result
        ..add('liftname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  SetsRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SetsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'set':
          result.set = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'reps':
          result.reps = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'weight':
          result.weight = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'liftname':
          result.liftname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$SetsRecord extends SetsRecord {
  @override
  final int set;
  @override
  final int reps;
  @override
  final int weight;
  @override
  final String liftname;
  @override
  final DocumentReference<Object> reference;

  factory _$SetsRecord([void Function(SetsRecordBuilder) updates]) =>
      (new SetsRecordBuilder()..update(updates)).build();

  _$SetsRecord._(
      {this.set, this.reps, this.weight, this.liftname, this.reference})
      : super._();

  @override
  SetsRecord rebuild(void Function(SetsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetsRecordBuilder toBuilder() => new SetsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetsRecord &&
        set == other.set &&
        reps == other.reps &&
        weight == other.weight &&
        liftname == other.liftname &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, set.hashCode), reps.hashCode), weight.hashCode),
            liftname.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SetsRecord')
          ..add('set', set)
          ..add('reps', reps)
          ..add('weight', weight)
          ..add('liftname', liftname)
          ..add('reference', reference))
        .toString();
  }
}

class SetsRecordBuilder implements Builder<SetsRecord, SetsRecordBuilder> {
  _$SetsRecord _$v;

  int _set;
  int get set => _$this._set;
  set set(int set) => _$this._set = set;

  int _reps;
  int get reps => _$this._reps;
  set reps(int reps) => _$this._reps = reps;

  int _weight;
  int get weight => _$this._weight;
  set weight(int weight) => _$this._weight = weight;

  String _liftname;
  String get liftname => _$this._liftname;
  set liftname(String liftname) => _$this._liftname = liftname;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  SetsRecordBuilder() {
    SetsRecord._initializeBuilder(this);
  }

  SetsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _set = $v.set;
      _reps = $v.reps;
      _weight = $v.weight;
      _liftname = $v.liftname;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetsRecord;
  }

  @override
  void update(void Function(SetsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetsRecord build() {
    final _$result = _$v ??
        new _$SetsRecord._(
            set: set,
            reps: reps,
            weight: weight,
            liftname: liftname,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
