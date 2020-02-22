// GENERATED CODE - DO NOT MODIFY BY HAND

part of people_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PeopleResult> _$peopleResultSerializer =
    new _$PeopleResultSerializer();

class _$PeopleResultSerializer implements StructuredSerializer<PeopleResult> {
  @override
  final Iterable<Type> types = const [PeopleResult, _$PeopleResult];
  @override
  final String wireName = 'PeopleResult';

  @override
  Iterable<Object> serialize(Serializers serializers, PeopleResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'known_for',
      serializers.serialize(object.knownFor,
          specifiedType:
              const FullType(BuiltList, const [const FullType(KnownFor)])),
    ];
    if (object.gender != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(object.gender,
            specifiedType: const FullType(double)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(double)));
    }
    if (object.profilePath != null) {
      result
        ..add('profile_path')
        ..add(serializers.serialize(object.profilePath,
            specifiedType: const FullType(String)));
    }
    if (object.popularity != null) {
      result
        ..add('popularity')
        ..add(serializers.serialize(object.popularity,
            specifiedType: const FullType(double)));
    }
    if (object.knownForDepartement != null) {
      result
        ..add('known_for_department')
        ..add(serializers.serialize(object.knownForDepartement,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PeopleResult deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PeopleResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'profile_path':
          result.profilePath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'known_for':
          result.knownFor.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(KnownFor)]))
              as BuiltList<dynamic>);
          break;
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'known_for_department':
          result.knownForDepartement = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PeopleResult extends PeopleResult {
  @override
  final double gender;
  @override
  final String name;
  @override
  final double id;
  @override
  final String profilePath;
  @override
  final BuiltList<KnownFor> knownFor;
  @override
  final double popularity;
  @override
  final String knownForDepartement;

  factory _$PeopleResult([void Function(PeopleResultBuilder) updates]) =>
      (new PeopleResultBuilder()..update(updates)).build();

  _$PeopleResult._(
      {this.gender,
      this.name,
      this.id,
      this.profilePath,
      this.knownFor,
      this.popularity,
      this.knownForDepartement})
      : super._() {
    if (knownFor == null) {
      throw new BuiltValueNullFieldError('PeopleResult', 'knownFor');
    }
  }

  @override
  PeopleResult rebuild(void Function(PeopleResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PeopleResultBuilder toBuilder() => new PeopleResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PeopleResult &&
        gender == other.gender &&
        name == other.name &&
        id == other.id &&
        profilePath == other.profilePath &&
        knownFor == other.knownFor &&
        popularity == other.popularity &&
        knownForDepartement == other.knownForDepartement;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, gender.hashCode), name.hashCode),
                        id.hashCode),
                    profilePath.hashCode),
                knownFor.hashCode),
            popularity.hashCode),
        knownForDepartement.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PeopleResult')
          ..add('gender', gender)
          ..add('name', name)
          ..add('id', id)
          ..add('profilePath', profilePath)
          ..add('knownFor', knownFor)
          ..add('popularity', popularity)
          ..add('knownForDepartement', knownForDepartement))
        .toString();
  }
}

class PeopleResultBuilder
    implements Builder<PeopleResult, PeopleResultBuilder> {
  _$PeopleResult _$v;

  double _gender;
  double get gender => _$this._gender;
  set gender(double gender) => _$this._gender = gender;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  double _id;
  double get id => _$this._id;
  set id(double id) => _$this._id = id;

  String _profilePath;
  String get profilePath => _$this._profilePath;
  set profilePath(String profilePath) => _$this._profilePath = profilePath;

  ListBuilder<KnownFor> _knownFor;
  ListBuilder<KnownFor> get knownFor =>
      _$this._knownFor ??= new ListBuilder<KnownFor>();
  set knownFor(ListBuilder<KnownFor> knownFor) => _$this._knownFor = knownFor;

  double _popularity;
  double get popularity => _$this._popularity;
  set popularity(double popularity) => _$this._popularity = popularity;

  String _knownForDepartement;
  String get knownForDepartement => _$this._knownForDepartement;
  set knownForDepartement(String knownForDepartement) =>
      _$this._knownForDepartement = knownForDepartement;

  PeopleResultBuilder();

  PeopleResultBuilder get _$this {
    if (_$v != null) {
      _gender = _$v.gender;
      _name = _$v.name;
      _id = _$v.id;
      _profilePath = _$v.profilePath;
      _knownFor = _$v.knownFor?.toBuilder();
      _popularity = _$v.popularity;
      _knownForDepartement = _$v.knownForDepartement;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PeopleResult other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PeopleResult;
  }

  @override
  void update(void Function(PeopleResultBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PeopleResult build() {
    _$PeopleResult _$result;
    try {
      _$result = _$v ??
          new _$PeopleResult._(
              gender: gender,
              name: name,
              id: id,
              profilePath: profilePath,
              knownFor: knownFor.build(),
              popularity: popularity,
              knownForDepartement: knownForDepartement);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'knownFor';
        knownFor.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PeopleResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
