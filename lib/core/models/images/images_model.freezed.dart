// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'images_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ImagesModel _$ImagesModelFromJson(Map<String, dynamic> json) {
  return _ImagesModel.fromJson(json);
}

class _$ImagesModelTearOff {
  const _$ImagesModelTearOff();

// ignore: unused_element
  _ImagesModel call(
      {@required @nullable List<BackdropsModel> backdrops,
      @required @nullable List<PostersModel> posters}) {
    return _ImagesModel(
      backdrops: backdrops,
      posters: posters,
    );
  }
}

// ignore: unused_element
const $ImagesModel = _$ImagesModelTearOff();

mixin _$ImagesModel {
  @nullable
  List<BackdropsModel> get backdrops;
  @nullable
  List<PostersModel> get posters;

  Map<String, dynamic> toJson();
  $ImagesModelCopyWith<ImagesModel> get copyWith;
}

abstract class $ImagesModelCopyWith<$Res> {
  factory $ImagesModelCopyWith(
          ImagesModel value, $Res Function(ImagesModel) then) =
      _$ImagesModelCopyWithImpl<$Res>;
  $Res call(
      {@nullable List<BackdropsModel> backdrops,
      @nullable List<PostersModel> posters});
}

class _$ImagesModelCopyWithImpl<$Res> implements $ImagesModelCopyWith<$Res> {
  _$ImagesModelCopyWithImpl(this._value, this._then);

  final ImagesModel _value;
  // ignore: unused_field
  final $Res Function(ImagesModel) _then;

  @override
  $Res call({
    Object backdrops = freezed,
    Object posters = freezed,
  }) {
    return _then(_value.copyWith(
      backdrops: backdrops == freezed
          ? _value.backdrops
          : backdrops as List<BackdropsModel>,
      posters:
          posters == freezed ? _value.posters : posters as List<PostersModel>,
    ));
  }
}

abstract class _$ImagesModelCopyWith<$Res>
    implements $ImagesModelCopyWith<$Res> {
  factory _$ImagesModelCopyWith(
          _ImagesModel value, $Res Function(_ImagesModel) then) =
      __$ImagesModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable List<BackdropsModel> backdrops,
      @nullable List<PostersModel> posters});
}

class __$ImagesModelCopyWithImpl<$Res> extends _$ImagesModelCopyWithImpl<$Res>
    implements _$ImagesModelCopyWith<$Res> {
  __$ImagesModelCopyWithImpl(
      _ImagesModel _value, $Res Function(_ImagesModel) _then)
      : super(_value, (v) => _then(v as _ImagesModel));

  @override
  _ImagesModel get _value => super._value as _ImagesModel;

  @override
  $Res call({
    Object backdrops = freezed,
    Object posters = freezed,
  }) {
    return _then(_ImagesModel(
      backdrops: backdrops == freezed
          ? _value.backdrops
          : backdrops as List<BackdropsModel>,
      posters:
          posters == freezed ? _value.posters : posters as List<PostersModel>,
    ));
  }
}

@JsonSerializable()
class _$_ImagesModel implements _ImagesModel {
  const _$_ImagesModel(
      {@required @nullable this.backdrops, @required @nullable this.posters});

  factory _$_ImagesModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ImagesModelFromJson(json);

  @override
  @nullable
  final List<BackdropsModel> backdrops;
  @override
  @nullable
  final List<PostersModel> posters;

  @override
  String toString() {
    return 'ImagesModel(backdrops: $backdrops, posters: $posters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImagesModel &&
            (identical(other.backdrops, backdrops) ||
                const DeepCollectionEquality()
                    .equals(other.backdrops, backdrops)) &&
            (identical(other.posters, posters) ||
                const DeepCollectionEquality().equals(other.posters, posters)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(backdrops) ^
      const DeepCollectionEquality().hash(posters);

  @override
  _$ImagesModelCopyWith<_ImagesModel> get copyWith =>
      __$ImagesModelCopyWithImpl<_ImagesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ImagesModelToJson(this);
  }
}

abstract class _ImagesModel implements ImagesModel {
  const factory _ImagesModel(
      {@required @nullable List<BackdropsModel> backdrops,
      @required @nullable List<PostersModel> posters}) = _$_ImagesModel;

  factory _ImagesModel.fromJson(Map<String, dynamic> json) =
      _$_ImagesModel.fromJson;

  @override
  @nullable
  List<BackdropsModel> get backdrops;
  @override
  @nullable
  List<PostersModel> get posters;
  @override
  _$ImagesModelCopyWith<_ImagesModel> get copyWith;
}

BackdropsModel _$BackdropsModelFromJson(Map<String, dynamic> json) {
  return _BackdropsModel.fromJson(json);
}

class _$BackdropsModelTearOff {
  const _$BackdropsModelTearOff();

// ignore: unused_element
  _BackdropsModel call(
      {@required @JsonKey(name: 'file_path') @nullable String filePath,
      @required @nullable double height,
      @required @nullable double width}) {
    return _BackdropsModel(
      filePath: filePath,
      height: height,
      width: width,
    );
  }
}

// ignore: unused_element
const $BackdropsModel = _$BackdropsModelTearOff();

mixin _$BackdropsModel {
  @JsonKey(name: 'file_path')
  @nullable
  String get filePath;
  @nullable
  double get height;
  @nullable
  double get width;

  Map<String, dynamic> toJson();
  $BackdropsModelCopyWith<BackdropsModel> get copyWith;
}

abstract class $BackdropsModelCopyWith<$Res> {
  factory $BackdropsModelCopyWith(
          BackdropsModel value, $Res Function(BackdropsModel) then) =
      _$BackdropsModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'file_path') @nullable String filePath,
      @nullable double height,
      @nullable double width});
}

class _$BackdropsModelCopyWithImpl<$Res>
    implements $BackdropsModelCopyWith<$Res> {
  _$BackdropsModelCopyWithImpl(this._value, this._then);

  final BackdropsModel _value;
  // ignore: unused_field
  final $Res Function(BackdropsModel) _then;

  @override
  $Res call({
    Object filePath = freezed,
    Object height = freezed,
    Object width = freezed,
  }) {
    return _then(_value.copyWith(
      filePath: filePath == freezed ? _value.filePath : filePath as String,
      height: height == freezed ? _value.height : height as double,
      width: width == freezed ? _value.width : width as double,
    ));
  }
}

abstract class _$BackdropsModelCopyWith<$Res>
    implements $BackdropsModelCopyWith<$Res> {
  factory _$BackdropsModelCopyWith(
          _BackdropsModel value, $Res Function(_BackdropsModel) then) =
      __$BackdropsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'file_path') @nullable String filePath,
      @nullable double height,
      @nullable double width});
}

class __$BackdropsModelCopyWithImpl<$Res>
    extends _$BackdropsModelCopyWithImpl<$Res>
    implements _$BackdropsModelCopyWith<$Res> {
  __$BackdropsModelCopyWithImpl(
      _BackdropsModel _value, $Res Function(_BackdropsModel) _then)
      : super(_value, (v) => _then(v as _BackdropsModel));

  @override
  _BackdropsModel get _value => super._value as _BackdropsModel;

  @override
  $Res call({
    Object filePath = freezed,
    Object height = freezed,
    Object width = freezed,
  }) {
    return _then(_BackdropsModel(
      filePath: filePath == freezed ? _value.filePath : filePath as String,
      height: height == freezed ? _value.height : height as double,
      width: width == freezed ? _value.width : width as double,
    ));
  }
}

@JsonSerializable()
class _$_BackdropsModel implements _BackdropsModel {
  const _$_BackdropsModel(
      {@required @JsonKey(name: 'file_path') @nullable this.filePath,
      @required @nullable this.height,
      @required @nullable this.width});

  factory _$_BackdropsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_BackdropsModelFromJson(json);

  @override
  @JsonKey(name: 'file_path')
  @nullable
  final String filePath;
  @override
  @nullable
  final double height;
  @override
  @nullable
  final double width;

  @override
  String toString() {
    return 'BackdropsModel(filePath: $filePath, height: $height, width: $width)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BackdropsModel &&
            (identical(other.filePath, filePath) ||
                const DeepCollectionEquality()
                    .equals(other.filePath, filePath)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(filePath) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(width);

  @override
  _$BackdropsModelCopyWith<_BackdropsModel> get copyWith =>
      __$BackdropsModelCopyWithImpl<_BackdropsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BackdropsModelToJson(this);
  }
}

abstract class _BackdropsModel implements BackdropsModel {
  const factory _BackdropsModel(
      {@required @JsonKey(name: 'file_path') @nullable String filePath,
      @required @nullable double height,
      @required @nullable double width}) = _$_BackdropsModel;

  factory _BackdropsModel.fromJson(Map<String, dynamic> json) =
      _$_BackdropsModel.fromJson;

  @override
  @JsonKey(name: 'file_path')
  @nullable
  String get filePath;
  @override
  @nullable
  double get height;
  @override
  @nullable
  double get width;
  @override
  _$BackdropsModelCopyWith<_BackdropsModel> get copyWith;
}

PostersModel _$PostersModelFromJson(Map<String, dynamic> json) {
  return _PostersModel.fromJson(json);
}

class _$PostersModelTearOff {
  const _$PostersModelTearOff();

// ignore: unused_element
  _PostersModel call(
      {@required @JsonKey(name: 'file_path') @nullable String filePath,
      @required @nullable double height,
      @required @nullable double width}) {
    return _PostersModel(
      filePath: filePath,
      height: height,
      width: width,
    );
  }
}

// ignore: unused_element
const $PostersModel = _$PostersModelTearOff();

mixin _$PostersModel {
  @JsonKey(name: 'file_path')
  @nullable
  String get filePath;
  @nullable
  double get height;
  @nullable
  double get width;

  Map<String, dynamic> toJson();
  $PostersModelCopyWith<PostersModel> get copyWith;
}

abstract class $PostersModelCopyWith<$Res> {
  factory $PostersModelCopyWith(
          PostersModel value, $Res Function(PostersModel) then) =
      _$PostersModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'file_path') @nullable String filePath,
      @nullable double height,
      @nullable double width});
}

class _$PostersModelCopyWithImpl<$Res> implements $PostersModelCopyWith<$Res> {
  _$PostersModelCopyWithImpl(this._value, this._then);

  final PostersModel _value;
  // ignore: unused_field
  final $Res Function(PostersModel) _then;

  @override
  $Res call({
    Object filePath = freezed,
    Object height = freezed,
    Object width = freezed,
  }) {
    return _then(_value.copyWith(
      filePath: filePath == freezed ? _value.filePath : filePath as String,
      height: height == freezed ? _value.height : height as double,
      width: width == freezed ? _value.width : width as double,
    ));
  }
}

abstract class _$PostersModelCopyWith<$Res>
    implements $PostersModelCopyWith<$Res> {
  factory _$PostersModelCopyWith(
          _PostersModel value, $Res Function(_PostersModel) then) =
      __$PostersModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'file_path') @nullable String filePath,
      @nullable double height,
      @nullable double width});
}

class __$PostersModelCopyWithImpl<$Res> extends _$PostersModelCopyWithImpl<$Res>
    implements _$PostersModelCopyWith<$Res> {
  __$PostersModelCopyWithImpl(
      _PostersModel _value, $Res Function(_PostersModel) _then)
      : super(_value, (v) => _then(v as _PostersModel));

  @override
  _PostersModel get _value => super._value as _PostersModel;

  @override
  $Res call({
    Object filePath = freezed,
    Object height = freezed,
    Object width = freezed,
  }) {
    return _then(_PostersModel(
      filePath: filePath == freezed ? _value.filePath : filePath as String,
      height: height == freezed ? _value.height : height as double,
      width: width == freezed ? _value.width : width as double,
    ));
  }
}

@JsonSerializable()
class _$_PostersModel implements _PostersModel {
  const _$_PostersModel(
      {@required @JsonKey(name: 'file_path') @nullable this.filePath,
      @required @nullable this.height,
      @required @nullable this.width});

  factory _$_PostersModel.fromJson(Map<String, dynamic> json) =>
      _$_$_PostersModelFromJson(json);

  @override
  @JsonKey(name: 'file_path')
  @nullable
  final String filePath;
  @override
  @nullable
  final double height;
  @override
  @nullable
  final double width;

  @override
  String toString() {
    return 'PostersModel(filePath: $filePath, height: $height, width: $width)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostersModel &&
            (identical(other.filePath, filePath) ||
                const DeepCollectionEquality()
                    .equals(other.filePath, filePath)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(filePath) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(width);

  @override
  _$PostersModelCopyWith<_PostersModel> get copyWith =>
      __$PostersModelCopyWithImpl<_PostersModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PostersModelToJson(this);
  }
}

abstract class _PostersModel implements PostersModel {
  const factory _PostersModel(
      {@required @JsonKey(name: 'file_path') @nullable String filePath,
      @required @nullable double height,
      @required @nullable double width}) = _$_PostersModel;

  factory _PostersModel.fromJson(Map<String, dynamic> json) =
      _$_PostersModel.fromJson;

  @override
  @JsonKey(name: 'file_path')
  @nullable
  String get filePath;
  @override
  @nullable
  double get height;
  @override
  @nullable
  double get width;
  @override
  _$PostersModelCopyWith<_PostersModel> get copyWith;
}
