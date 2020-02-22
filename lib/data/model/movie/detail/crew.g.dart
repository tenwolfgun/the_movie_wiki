// GENERATED CODE - DO NOT MODIFY BY HAND

part of crew;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Crew> _$crewSerializer = new _$CrewSerializer();

class _$CrewSerializer implements StructuredSerializer<Crew> {
  @override
  final Iterable<Type> types = const [Crew, _$Crew];
  @override
  final String wireName = 'Crew';

  @override
  Iterable<Object> serialize(Serializers serializers, Crew object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(double)));
    }
    if (object.department != null) {
      result
        ..add('department')
        ..add(serializers.serialize(object.department,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.job != null) {
      result
        ..add('job')
        ..add(serializers.serialize(object.job,
            specifiedType: const FullType(String)));
    }
    if (object.profilePath != null) {
      result
        ..add('profile_path')
        ..add(serializers.serialize(object.profilePath,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Crew deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CrewBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'department':
          result.department = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'job':
          result.job = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'profile_path':
          result.profilePath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Crew extends Crew {
  @override
  final double id;
  @override
  final String department;
  @override
  final String name;
  @override
  final String job;
  @override
  final String profilePath;

  factory _$Crew([void Function(CrewBuilder) updates]) =>
      (new CrewBuilder()..update(updates)).build();

  _$Crew._({this.id, this.department, this.name, this.job, this.profilePath})
      : super._();

  @override
  Crew rebuild(void Function(CrewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CrewBuilder toBuilder() => new CrewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Crew &&
        id == other.id &&
        department == other.department &&
        name == other.name &&
        job == other.job &&
        profilePath == other.profilePath;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), department.hashCode), name.hashCode),
            job.hashCode),
        profilePath.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Crew')
          ..add('id', id)
          ..add('department', department)
          ..add('name', name)
          ..add('job', job)
          ..add('profilePath', profilePath))
        .toString();
  }
}

class CrewBuilder implements Builder<Crew, CrewBuilder> {
  _$Crew _$v;

  double _id;
  double get id => _$this._id;
  set id(double id) => _$this._id = id;

  String _department;
  String get department => _$this._department;
  set department(String department) => _$this._department = department;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _job;
  String get job => _$this._job;
  set job(String job) => _$this._job = job;

  String _profilePath;
  String get profilePath => _$this._profilePath;
  set profilePath(String profilePath) => _$this._profilePath = profilePath;

  CrewBuilder();

  CrewBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _department = _$v.department;
      _name = _$v.name;
      _job = _$v.job;
      _profilePath = _$v.profilePath;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Crew other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Crew;
  }

  @override
  void update(void Function(CrewBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Crew build() {
    final _$result = _$v ??
        new _$Crew._(
            id: id,
            department: department,
            name: name,
            job: job,
            profilePath: profilePath);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
