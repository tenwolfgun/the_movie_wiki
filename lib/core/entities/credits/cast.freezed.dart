// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CastTearOff {
  const _$CastTearOff();

// ignore: unused_element
  _Cast call(
      {@required @nullable int id,
      @required @nullable String character,
      @required @nullable String name,
      @required @nullable String profilePath}) {
    return _Cast(
      id: id,
      character: character,
      name: name,
      profilePath: profilePath,
    );
  }
}

// ignore: unused_element
const $Cast = _$CastTearOff();

mixin _$Cast {
  @nullable
  int get id;
  @nullable
  String get character;
  @nullable
  String get name;
  @nullable
  String get profilePath;

  $CastCopyWith<Cast> get copyWith;
}

abstract class $CastCopyWith<$Res> {
  factory $CastCopyWith(Cast value, $Res Function(Cast) then) =
      _$CastCopyWithImpl<$Res>;
  $Res call(
      {@nullable int id,
      @nullable String character,
      @nullable String name,
      @nullable String profilePath});
}

class _$CastCopyWithImpl<$Res> implements $CastCopyWith<$Res> {
  _$CastCopyWithImpl(this._value, this._then);

  final Cast _value;
  // ignore: unused_field
  final $Res Function(Cast) _then;

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

abstract class _$CastCopyWith<$Res> implements $CastCopyWith<$Res> {
  factory _$CastCopyWith(_Cast value, $Res Function(_Cast) then) =
      __$CastCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable int id,
      @nullable String character,
      @nullable String name,
      @nullable String profilePath});
}

class __$CastCopyWithImpl<$Res> extends _$CastCopyWithImpl<$Res>
    implements _$CastCopyWith<$Res> {
  __$CastCopyWithImpl(_Cast _value, $Res Function(_Cast) _then)
      : super(_value, (v) => _then(v as _Cast));

  @override
  _Cast get _value => super._value as _Cast;

  @override
  $Res call({
    Object id = freezed,
    Object character = freezed,
    Object name = freezed,
    Object profilePath = freezed,
  }) {
    return _then(_Cast(
      id: id == freezed ? _value.id : id as int,
      character: character == freezed ? _value.character : character as String,
      name: name == freezed ? _value.name : name as String,
      profilePath:
          profilePath == freezed ? _value.profilePath : profilePath as String,
    ));
  }
}

class _$_Cast implements _Cast {
  const _$_Cast(
      {@required @nullable this.id,
      @required @nullable this.character,
      @required @nullable this.name,
      @required @nullable this.profilePath});

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
  @nullable
  final String profilePath;

  @override
  String toString() {
    return 'Cast(id: $id, character: $character, name: $name, profilePath: $profilePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Cast &&
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
  _$CastCopyWith<_Cast> get copyWith =>
      __$CastCopyWithImpl<_Cast>(this, _$identity);
}

abstract class _Cast implements Cast {
  const factory _Cast(
      {@required @nullable int id,
      @required @nullable String character,
      @required @nullable String name,
      @required @nullable String profilePath}) = _$_Cast;

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
  @nullable
  String get profilePath;
  @override
  _$CastCopyWith<_Cast> get copyWith;
}
