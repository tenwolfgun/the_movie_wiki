// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'video_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$VideoResultTearOff {
  const _$VideoResultTearOff();

// ignore: unused_element
  _VideoResult call(
      {@required @nullable String id,
      @required @nullable String key,
      @required @nullable String name,
      @required @nullable String site,
      @required @nullable double size,
      @required @nullable String type}) {
    return _VideoResult(
      id: id,
      key: key,
      name: name,
      site: site,
      size: size,
      type: type,
    );
  }
}

// ignore: unused_element
const $VideoResult = _$VideoResultTearOff();

mixin _$VideoResult {
  @nullable
  String get id;
  @nullable
  String get key;
  @nullable
  String get name;
  @nullable
  String get site;
  @nullable
  double get size;
  @nullable
  String get type;

  $VideoResultCopyWith<VideoResult> get copyWith;
}

abstract class $VideoResultCopyWith<$Res> {
  factory $VideoResultCopyWith(
          VideoResult value, $Res Function(VideoResult) then) =
      _$VideoResultCopyWithImpl<$Res>;
  $Res call(
      {@nullable String id,
      @nullable String key,
      @nullable String name,
      @nullable String site,
      @nullable double size,
      @nullable String type});
}

class _$VideoResultCopyWithImpl<$Res> implements $VideoResultCopyWith<$Res> {
  _$VideoResultCopyWithImpl(this._value, this._then);

  final VideoResult _value;
  // ignore: unused_field
  final $Res Function(VideoResult) _then;

  @override
  $Res call({
    Object id = freezed,
    Object key = freezed,
    Object name = freezed,
    Object site = freezed,
    Object size = freezed,
    Object type = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      key: key == freezed ? _value.key : key as String,
      name: name == freezed ? _value.name : name as String,
      site: site == freezed ? _value.site : site as String,
      size: size == freezed ? _value.size : size as double,
      type: type == freezed ? _value.type : type as String,
    ));
  }
}

abstract class _$VideoResultCopyWith<$Res>
    implements $VideoResultCopyWith<$Res> {
  factory _$VideoResultCopyWith(
          _VideoResult value, $Res Function(_VideoResult) then) =
      __$VideoResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable String id,
      @nullable String key,
      @nullable String name,
      @nullable String site,
      @nullable double size,
      @nullable String type});
}

class __$VideoResultCopyWithImpl<$Res> extends _$VideoResultCopyWithImpl<$Res>
    implements _$VideoResultCopyWith<$Res> {
  __$VideoResultCopyWithImpl(
      _VideoResult _value, $Res Function(_VideoResult) _then)
      : super(_value, (v) => _then(v as _VideoResult));

  @override
  _VideoResult get _value => super._value as _VideoResult;

  @override
  $Res call({
    Object id = freezed,
    Object key = freezed,
    Object name = freezed,
    Object site = freezed,
    Object size = freezed,
    Object type = freezed,
  }) {
    return _then(_VideoResult(
      id: id == freezed ? _value.id : id as String,
      key: key == freezed ? _value.key : key as String,
      name: name == freezed ? _value.name : name as String,
      site: site == freezed ? _value.site : site as String,
      size: size == freezed ? _value.size : size as double,
      type: type == freezed ? _value.type : type as String,
    ));
  }
}

class _$_VideoResult implements _VideoResult {
  const _$_VideoResult(
      {@required @nullable this.id,
      @required @nullable this.key,
      @required @nullable this.name,
      @required @nullable this.site,
      @required @nullable this.size,
      @required @nullable this.type});

  @override
  @nullable
  final String id;
  @override
  @nullable
  final String key;
  @override
  @nullable
  final String name;
  @override
  @nullable
  final String site;
  @override
  @nullable
  final double size;
  @override
  @nullable
  final String type;

  @override
  String toString() {
    return 'VideoResult(id: $id, key: $key, name: $name, site: $site, size: $size, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VideoResult &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.site, site) ||
                const DeepCollectionEquality().equals(other.site, site)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(site) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(type);

  @override
  _$VideoResultCopyWith<_VideoResult> get copyWith =>
      __$VideoResultCopyWithImpl<_VideoResult>(this, _$identity);
}

abstract class _VideoResult implements VideoResult {
  const factory _VideoResult(
      {@required @nullable String id,
      @required @nullable String key,
      @required @nullable String name,
      @required @nullable String site,
      @required @nullable double size,
      @required @nullable String type}) = _$_VideoResult;

  @override
  @nullable
  String get id;
  @override
  @nullable
  String get key;
  @override
  @nullable
  String get name;
  @override
  @nullable
  String get site;
  @override
  @nullable
  double get size;
  @override
  @nullable
  String get type;
  @override
  _$VideoResultCopyWith<_VideoResult> get copyWith;
}
