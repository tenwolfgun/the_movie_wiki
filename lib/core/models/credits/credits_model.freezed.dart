// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'credits_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CreditsModel _$CreditsModelFromJson(Map<String, dynamic> json) {
  return _CreditsModel.fromJson(json);
}

class _$CreditsModelTearOff {
  const _$CreditsModelTearOff();

// ignore: unused_element
  _CreditsModel call({@required @nullable List<CastModel> cast}) {
    return _CreditsModel(
      cast: cast,
    );
  }
}

// ignore: unused_element
const $CreditsModel = _$CreditsModelTearOff();

mixin _$CreditsModel {
  @nullable
  List<CastModel> get cast;

  Map<String, dynamic> toJson();
  $CreditsModelCopyWith<CreditsModel> get copyWith;
}

abstract class $CreditsModelCopyWith<$Res> {
  factory $CreditsModelCopyWith(
          CreditsModel value, $Res Function(CreditsModel) then) =
      _$CreditsModelCopyWithImpl<$Res>;
  $Res call({@nullable List<CastModel> cast});
}

class _$CreditsModelCopyWithImpl<$Res> implements $CreditsModelCopyWith<$Res> {
  _$CreditsModelCopyWithImpl(this._value, this._then);

  final CreditsModel _value;
  // ignore: unused_field
  final $Res Function(CreditsModel) _then;

  @override
  $Res call({
    Object cast = freezed,
  }) {
    return _then(_value.copyWith(
      cast: cast == freezed ? _value.cast : cast as List<CastModel>,
    ));
  }
}

abstract class _$CreditsModelCopyWith<$Res>
    implements $CreditsModelCopyWith<$Res> {
  factory _$CreditsModelCopyWith(
          _CreditsModel value, $Res Function(_CreditsModel) then) =
      __$CreditsModelCopyWithImpl<$Res>;
  @override
  $Res call({@nullable List<CastModel> cast});
}

class __$CreditsModelCopyWithImpl<$Res> extends _$CreditsModelCopyWithImpl<$Res>
    implements _$CreditsModelCopyWith<$Res> {
  __$CreditsModelCopyWithImpl(
      _CreditsModel _value, $Res Function(_CreditsModel) _then)
      : super(_value, (v) => _then(v as _CreditsModel));

  @override
  _CreditsModel get _value => super._value as _CreditsModel;

  @override
  $Res call({
    Object cast = freezed,
  }) {
    return _then(_CreditsModel(
      cast: cast == freezed ? _value.cast : cast as List<CastModel>,
    ));
  }
}

@JsonSerializable()
class _$_CreditsModel implements _CreditsModel {
  const _$_CreditsModel({@required @nullable this.cast});

  factory _$_CreditsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CreditsModelFromJson(json);

  @override
  @nullable
  final List<CastModel> cast;

  @override
  String toString() {
    return 'CreditsModel(cast: $cast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreditsModel &&
            (identical(other.cast, cast) ||
                const DeepCollectionEquality().equals(other.cast, cast)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cast);

  @override
  _$CreditsModelCopyWith<_CreditsModel> get copyWith =>
      __$CreditsModelCopyWithImpl<_CreditsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CreditsModelToJson(this);
  }
}

abstract class _CreditsModel implements CreditsModel {
  const factory _CreditsModel({@required @nullable List<CastModel> cast}) =
      _$_CreditsModel;

  factory _CreditsModel.fromJson(Map<String, dynamic> json) =
      _$_CreditsModel.fromJson;

  @override
  @nullable
  List<CastModel> get cast;
  @override
  _$CreditsModelCopyWith<_CreditsModel> get copyWith;
}

CastModel _$CastModelFromJson(Map<String, dynamic> json) {
  return _CastModel.fromJson(json);
}

class _$CastModelTearOff {
  const _$CastModelTearOff();

// ignore: unused_element
  _CastModel call(
      {@required @nullable int id,
      @required @nullable String character,
      @required @nullable String name,
      @required @JsonKey(name: 'profile_path') @nullable String profilePath}) {
    return _CastModel(
      id: id,
      character: character,
      name: name,
      profilePath: profilePath,
    );
  }
}

// ignore: unused_element
const $CastModel = _$CastModelTearOff();

mixin _$CastModel {
  @nullable
  int get id;
  @nullable
  String get character;
  @nullable
  String get name;
  @JsonKey(name: 'profile_path')
  @nullable
  String get profilePath;

  Map<String, dynamic> toJson();
  $CastModelCopyWith<CastModel> get copyWith;
}

abstract class $CastModelCopyWith<$Res> {
  factory $CastModelCopyWith(CastModel value, $Res Function(CastModel) then) =
      _$CastModelCopyWithImpl<$Res>;
  $Res call(
      {@nullable int id,
      @nullable String character,
      @nullable String name,
      @JsonKey(name: 'profile_path') @nullable String profilePath});
}

class _$CastModelCopyWithImpl<$Res> implements $CastModelCopyWith<$Res> {
  _$CastModelCopyWithImpl(this._value, this._then);

  final CastModel _value;
  // ignore: unused_field
  final $Res Function(CastModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object character = freezed,
    Object name = freezed,
    Object profilePath = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      character: character == freezed ? _value.character : character as String,
      name: name == freezed ? _value.name : name as String,
      profilePath:
          profilePath == freezed ? _value.profilePath : profilePath as String,
    ));
  }
}

abstract class _$CastModelCopyWith<$Res> implements $CastModelCopyWith<$Res> {
  factory _$CastModelCopyWith(
          _CastModel value, $Res Function(_CastModel) then) =
      __$CastModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable int id,
      @nullable String character,
      @nullable String name,
      @JsonKey(name: 'profile_path') @nullable String profilePath});
}

class __$CastModelCopyWithImpl<$Res> extends _$CastModelCopyWithImpl<$Res>
    implements _$CastModelCopyWith<$Res> {
  __$CastModelCopyWithImpl(_CastModel _value, $Res Function(_CastModel) _then)
      : super(_value, (v) => _then(v as _CastModel));

  @override
  _CastModel get _value => super._value as _CastModel;

  @override
  $Res call({
    Object id = freezed,
    Object character = freezed,
    Object name = freezed,
    Object profilePath = freezed,
  }) {
    return _then(_CastModel(
      id: id == freezed ? _value.id : id as int,
      character: character == freezed ? _value.character : character as String,
      name: name == freezed ? _value.name : name as String,
      profilePath:
          profilePath == freezed ? _value.profilePath : profilePath as String,
    ));
  }
}

@JsonSerializable()
class _$_CastModel implements _CastModel {
  const _$_CastModel(
      {@required @nullable this.id,
      @required @nullable this.character,
      @required @nullable this.name,
      @required @JsonKey(name: 'profile_path') @nullable this.profilePath});

  factory _$_CastModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CastModelFromJson(json);

  @override
  @nullable
  final int id;
  @override
  @nullable
  final String character;
  @override
  @nullable
  final String name;
  @override
  @JsonKey(name: 'profile_path')
  @nullable
  final String profilePath;

  @override
  String toString() {
    return 'CastModel(id: $id, character: $character, name: $name, profilePath: $profilePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CastModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.character, character) ||
                const DeepCollectionEquality()
                    .equals(other.character, character)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.profilePath, profilePath) ||
                const DeepCollectionEquality()
                    .equals(other.profilePath, profilePath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(character) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(profilePath);

  @override
  _$CastModelCopyWith<_CastModel> get copyWith =>
      __$CastModelCopyWithImpl<_CastModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CastModelToJson(this);
  }
}

abstract class _CastModel implements CastModel {
  const factory _CastModel(
      {@required
      @nullable
          int id,
      @required
      @nullable
          String character,
      @required
      @nullable
          String name,
      @required
      @JsonKey(name: 'profile_path')
      @nullable
          String profilePath}) = _$_CastModel;

  factory _CastModel.fromJson(Map<String, dynamic> json) =
      _$_CastModel.fromJson;

  @override
  @nullable
  int get id;
  @override
  @nullable
  String get character;
  @override
  @nullable
  String get name;
  @override
  @JsonKey(name: 'profile_path')
  @nullable
  String get profilePath;
  @override
  _$CastModelCopyWith<_CastModel> get copyWith;
}
