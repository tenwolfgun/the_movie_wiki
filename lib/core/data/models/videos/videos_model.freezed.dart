// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'videos_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
VideosModel _$VideosModelFromJson(Map<String, dynamic> json) {
  return _VideosModel.fromJson(json);
}

class _$VideosModelTearOff {
  const _$VideosModelTearOff();

// ignore: unused_element
  _VideosModel call({@required @nullable List<VideoResultModel> results}) {
    return _VideosModel(
      results: results,
    );
  }
}

// ignore: unused_element
const $VideosModel = _$VideosModelTearOff();

mixin _$VideosModel {
  @nullable
  List<VideoResultModel> get results;

  Map<String, dynamic> toJson();
  $VideosModelCopyWith<VideosModel> get copyWith;
}

abstract class $VideosModelCopyWith<$Res> {
  factory $VideosModelCopyWith(
          VideosModel value, $Res Function(VideosModel) then) =
      _$VideosModelCopyWithImpl<$Res>;
  $Res call({@nullable List<VideoResultModel> results});
}

class _$VideosModelCopyWithImpl<$Res> implements $VideosModelCopyWith<$Res> {
  _$VideosModelCopyWithImpl(this._value, this._then);

  final VideosModel _value;
  // ignore: unused_field
  final $Res Function(VideosModel) _then;

  @override
  $Res call({
    Object results = freezed,
  }) {
    return _then(_value.copyWith(
      results: results == freezed
          ? _value.results
          : results as List<VideoResultModel>,
    ));
  }
}

abstract class _$VideosModelCopyWith<$Res>
    implements $VideosModelCopyWith<$Res> {
  factory _$VideosModelCopyWith(
          _VideosModel value, $Res Function(_VideosModel) then) =
      __$VideosModelCopyWithImpl<$Res>;
  @override
  $Res call({@nullable List<VideoResultModel> results});
}

class __$VideosModelCopyWithImpl<$Res> extends _$VideosModelCopyWithImpl<$Res>
    implements _$VideosModelCopyWith<$Res> {
  __$VideosModelCopyWithImpl(
      _VideosModel _value, $Res Function(_VideosModel) _then)
      : super(_value, (v) => _then(v as _VideosModel));

  @override
  _VideosModel get _value => super._value as _VideosModel;

  @override
  $Res call({
    Object results = freezed,
  }) {
    return _then(_VideosModel(
      results: results == freezed
          ? _value.results
          : results as List<VideoResultModel>,
    ));
  }
}

@JsonSerializable()
class _$_VideosModel implements _VideosModel {
  const _$_VideosModel({@required @nullable this.results});

  factory _$_VideosModel.fromJson(Map<String, dynamic> json) =>
      _$_$_VideosModelFromJson(json);

  @override
  @nullable
  final List<VideoResultModel> results;

  @override
  String toString() {
    return 'VideosModel(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VideosModel &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(results);

  @override
  _$VideosModelCopyWith<_VideosModel> get copyWith =>
      __$VideosModelCopyWithImpl<_VideosModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VideosModelToJson(this);
  }
}

abstract class _VideosModel implements VideosModel {
  const factory _VideosModel(
      {@required @nullable List<VideoResultModel> results}) = _$_VideosModel;

  factory _VideosModel.fromJson(Map<String, dynamic> json) =
      _$_VideosModel.fromJson;

  @override
  @nullable
  List<VideoResultModel> get results;
  @override
  _$VideosModelCopyWith<_VideosModel> get copyWith;
}

VideoResultModel _$VideoResultModelFromJson(Map<String, dynamic> json) {
  return _VideoResultModel.fromJson(json);
}

class _$VideoResultModelTearOff {
  const _$VideoResultModelTearOff();

// ignore: unused_element
  _VideoResultModel call(
      {@required @nullable String id,
      @required @nullable String key,
      @required @nullable String name,
      @required @nullable String site,
      @required @nullable double size,
      @required @nullable String type}) {
    return _VideoResultModel(
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
const $VideoResultModel = _$VideoResultModelTearOff();

mixin _$VideoResultModel {
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

  Map<String, dynamic> toJson();
  $VideoResultModelCopyWith<VideoResultModel> get copyWith;
}

abstract class $VideoResultModelCopyWith<$Res> {
  factory $VideoResultModelCopyWith(
          VideoResultModel value, $Res Function(VideoResultModel) then) =
      _$VideoResultModelCopyWithImpl<$Res>;
  $Res call(
      {@nullable String id,
      @nullable String key,
      @nullable String name,
      @nullable String site,
      @nullable double size,
      @nullable String type});
}

class _$VideoResultModelCopyWithImpl<$Res>
    implements $VideoResultModelCopyWith<$Res> {
  _$VideoResultModelCopyWithImpl(this._value, this._then);

  final VideoResultModel _value;
  // ignore: unused_field
  final $Res Function(VideoResultModel) _then;

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

abstract class _$VideoResultModelCopyWith<$Res>
    implements $VideoResultModelCopyWith<$Res> {
  factory _$VideoResultModelCopyWith(
          _VideoResultModel value, $Res Function(_VideoResultModel) then) =
      __$VideoResultModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable String id,
      @nullable String key,
      @nullable String name,
      @nullable String site,
      @nullable double size,
      @nullable String type});
}

class __$VideoResultModelCopyWithImpl<$Res>
    extends _$VideoResultModelCopyWithImpl<$Res>
    implements _$VideoResultModelCopyWith<$Res> {
  __$VideoResultModelCopyWithImpl(
      _VideoResultModel _value, $Res Function(_VideoResultModel) _then)
      : super(_value, (v) => _then(v as _VideoResultModel));

  @override
  _VideoResultModel get _value => super._value as _VideoResultModel;

  @override
  $Res call({
    Object id = freezed,
    Object key = freezed,
    Object name = freezed,
    Object site = freezed,
    Object size = freezed,
    Object type = freezed,
  }) {
    return _then(_VideoResultModel(
      id: id == freezed ? _value.id : id as String,
      key: key == freezed ? _value.key : key as String,
      name: name == freezed ? _value.name : name as String,
      site: site == freezed ? _value.site : site as String,
      size: size == freezed ? _value.size : size as double,
      type: type == freezed ? _value.type : type as String,
    ));
  }
}

@JsonSerializable()
class _$_VideoResultModel implements _VideoResultModel {
  const _$_VideoResultModel(
      {@required @nullable this.id,
      @required @nullable this.key,
      @required @nullable this.name,
      @required @nullable this.site,
      @required @nullable this.size,
      @required @nullable this.type});

  factory _$_VideoResultModel.fromJson(Map<String, dynamic> json) =>
      _$_$_VideoResultModelFromJson(json);

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
    return 'VideoResultModel(id: $id, key: $key, name: $name, site: $site, size: $size, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VideoResultModel &&
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
  _$VideoResultModelCopyWith<_VideoResultModel> get copyWith =>
      __$VideoResultModelCopyWithImpl<_VideoResultModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VideoResultModelToJson(this);
  }
}

abstract class _VideoResultModel implements VideoResultModel {
  const factory _VideoResultModel(
      {@required @nullable String id,
      @required @nullable String key,
      @required @nullable String name,
      @required @nullable String site,
      @required @nullable double size,
      @required @nullable String type}) = _$_VideoResultModel;

  factory _VideoResultModel.fromJson(Map<String, dynamic> json) =
      _$_VideoResultModel.fromJson;

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
  _$VideoResultModelCopyWith<_VideoResultModel> get copyWith;
}
