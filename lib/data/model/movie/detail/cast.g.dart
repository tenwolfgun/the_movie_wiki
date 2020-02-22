// GENERATED CODE - DO NOT MODIFY BY HAND

part of cast;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Cast> _$castSerializer = new _$CastSerializer();

class _$CastSerializer implements StructuredSerializer<Cast> {
  @override
  final Iterable<Type> types = const [Cast, _$Cast];
  @override
  final String wireName = 'Cast';

  @override
  Iterable<Object> serialize(Serializers serializers, Cast object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(double)));
    }
    if (object.character != null) {
      result
        ..add('character')
        ..add(serializers.serialize(object.character,
            specifiedType: const FullType(String)));
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
  Cast deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CastBuilder();

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
        case 'character':
          result.character = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$Cast extends Cast {
  @override
  final double id;
  @override
  final String character;
  @override
  final String name;
  @override
  final String profilePath;

  factory _$Cast([void Function(CastBuilder) updates]) =>
      (new CastBuilder()..update(updates)).build();

  _$Cast._({this.id, this.character, this.name, this.profilePath}) : super._();

  @override
  Cast rebuild(void Function(CastBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CastBuilder toBuilder() => new CastBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Cast &&
        id == other.id &&
        character == other.character &&
        name == other.name &&
        profilePath == other.profilePath;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), character.hashCode), name.hashCode),
        profilePath.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Cast')
          ..add('id', id)
          ..add('character', character)
          ..add('name', name)
          ..add('profilePath', profilePath))
        .toString();
  }
}

class CastBuilder implements Builder<Cast, CastBuilder> {
  _$Cast _$v;

  double _id;
  double get id => _$this._id;
  set id(double id) => _$this._id = id;

  String _character;
  String get character => _$this._character;
  set character(String character) => _$this._character = character;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _profilePath;
  String get profilePath => _$this._profilePath;
  set profilePath(String profilePath) => _$this._profilePath = profilePath;

  CastBuilder();

  CastBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _character = _$v.character;
      _name = _$v.name;
      _profilePath = _$v.profilePath;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Cast other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Cast;
  }

  @override
  void update(void Function(CastBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Cast build() {
    final _$result = _$v ??
        new _$Cast._(
            id: id, character: character, name: name, profilePath: profilePath);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
