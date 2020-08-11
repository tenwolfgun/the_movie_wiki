// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'genre_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
GenreModel _$GenreModelFromJson(Map<String, dynamic> json) {
  return _GenreModel.fromJson(json);
}

class _$GenreModelTearOff {
  const _$GenreModelTearOff();

// ignore: unused_element
  _GenreModel call(
      {@required @nullable int id, @required @nullable String name}) {
    return _GenreModel(
      id: id,
      name: name,
    );
  }
}

// ignore: unused_element
const $GenreModel = _$GenreModelTearOff();

mixin _$GenreModel {
  @nullable
  int get id;
  @nullable
  String get name;

  Map<String, dynamic> toJson();
  $GenreModelCopyWith<GenreModel> get copyWith;
}

abstract class $GenreModelCopyWith<$Res> {
  factory $GenreModelCopyWith(
          GenreModel value, $Res Function(GenreModel) then) =
      _$GenreModelCopyWithImpl<$Res>;
  $Res call({@nullable int id, @nullable String name});
}

class _$GenreModelCopyWithImpl<$Res> implements $GenreModelCopyWith<$Res> {
  _$GenreModelCopyWithImpl(this._value, this._then);

  final GenreModel _value;
  // ignore: unused_field
  final $Res Function(GenreModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

abstract class _$GenreModelCopyWith<$Res> implements $GenreModelCopyWith<$Res> {
  factory _$GenreModelCopyWith(
          _GenreModel value, $Res Function(_GenreModel) then) =
      __$GenreModelCopyWithImpl<$Res>;
  @override
  $Res call({@nullable int id, @nullable String name});
}

class __$GenreModelCopyWithImpl<$Res> extends _$GenreModelCopyWithImpl<$Res>
    implements _$GenreModelCopyWith<$Res> {
  __$GenreModelCopyWithImpl(
      _GenreModel _value, $Res Function(_GenreModel) _then)
      : super(_value, (v) => _then(v as _GenreModel));

  @override
  _GenreModel get _value => super._value as _GenreModel;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(_GenreModel(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()
class _$_GenreModel implements _GenreModel {
  const _$_GenreModel(
      {@required @nullable this.id, @required @nullable this.name});

  factory _$_GenreModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GenreModelFromJson(json);

  @override
  @nullable
  final int id;
  @override
  @nullable
  final String name;

  @override
  String toString() {
    return 'GenreModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GenreModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @override
  _$GenreModelCopyWith<_GenreModel> get copyWith =>
      __$GenreModelCopyWithImpl<_GenreModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GenreModelToJson(this);
  }
}

abstract class _GenreModel implements GenreModel {
  const factory _GenreModel(
      {@required @nullable int id,
      @required @nullable String name}) = _$_GenreModel;

  factory _GenreModel.fromJson(Map<String, dynamic> json) =
      _$_GenreModel.fromJson;

  @override
  @nullable
  int get id;
  @override
  @nullable
  String get name;
  @override
  _$GenreModelCopyWith<_GenreModel> get copyWith;
}
