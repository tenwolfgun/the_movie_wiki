// GENERATED CODE - DO NOT MODIFY BY HAND

part of created_by;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CreatedBy> _$createdBySerializer = new _$CreatedBySerializer();

class _$CreatedBySerializer implements StructuredSerializer<CreatedBy> {
  @override
  final Iterable<Type> types = const [CreatedBy, _$CreatedBy];
  @override
  final String wireName = 'CreatedBy';

  @override
  Iterable<Object> serialize(Serializers serializers, CreatedBy object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
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
  CreatedBy deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreatedByBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
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

class _$CreatedBy extends CreatedBy {
  @override
  final int id;
  @override
  final String name;
  @override
  final String profilePath;

  factory _$CreatedBy([void Function(CreatedByBuilder) updates]) =>
      (new CreatedByBuilder()..update(updates)).build();

  _$CreatedBy._({this.id, this.name, this.profilePath}) : super._();

  @override
  CreatedBy rebuild(void Function(CreatedByBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatedByBuilder toBuilder() => new CreatedByBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatedBy &&
        id == other.id &&
        name == other.name &&
        profilePath == other.profilePath;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, id.hashCode), name.hashCode), profilePath.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreatedBy')
          ..add('id', id)
          ..add('name', name)
          ..add('profilePath', profilePath))
        .toString();
  }
}

class CreatedByBuilder implements Builder<CreatedBy, CreatedByBuilder> {
  _$CreatedBy _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _profilePath;
  String get profilePath => _$this._profilePath;
  set profilePath(String profilePath) => _$this._profilePath = profilePath;

  CreatedByBuilder();

  CreatedByBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _profilePath = _$v.profilePath;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatedBy other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CreatedBy;
  }

  @override
  void update(void Function(CreatedByBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreatedBy build() {
    final _$result =
        _$v ?? new _$CreatedBy._(id: id, name: name, profilePath: profilePath);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
