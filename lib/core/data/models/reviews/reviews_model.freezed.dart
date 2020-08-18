// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'reviews_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ReviewsModel _$ReviewsModelFromJson(Map<String, dynamic> json) {
  return _ReviewsModel.fromJson(json);
}

class _$ReviewsModelTearOff {
  const _$ReviewsModelTearOff();

// ignore: unused_element
  _ReviewsModel call({@required @nullable List<ReviewResultModel> results}) {
    return _ReviewsModel(
      results: results,
    );
  }
}

// ignore: unused_element
const $ReviewsModel = _$ReviewsModelTearOff();

mixin _$ReviewsModel {
  @nullable
  List<ReviewResultModel> get results;

  Map<String, dynamic> toJson();
  $ReviewsModelCopyWith<ReviewsModel> get copyWith;
}

abstract class $ReviewsModelCopyWith<$Res> {
  factory $ReviewsModelCopyWith(
          ReviewsModel value, $Res Function(ReviewsModel) then) =
      _$ReviewsModelCopyWithImpl<$Res>;
  $Res call({@nullable List<ReviewResultModel> results});
}

class _$ReviewsModelCopyWithImpl<$Res> implements $ReviewsModelCopyWith<$Res> {
  _$ReviewsModelCopyWithImpl(this._value, this._then);

  final ReviewsModel _value;
  // ignore: unused_field
  final $Res Function(ReviewsModel) _then;

  @override
  $Res call({
    Object results = freezed,
  }) {
    return _then(_value.copyWith(
      results: results == freezed
          ? _value.results
          : results as List<ReviewResultModel>,
    ));
  }
}

abstract class _$ReviewsModelCopyWith<$Res>
    implements $ReviewsModelCopyWith<$Res> {
  factory _$ReviewsModelCopyWith(
          _ReviewsModel value, $Res Function(_ReviewsModel) then) =
      __$ReviewsModelCopyWithImpl<$Res>;
  @override
  $Res call({@nullable List<ReviewResultModel> results});
}

class __$ReviewsModelCopyWithImpl<$Res> extends _$ReviewsModelCopyWithImpl<$Res>
    implements _$ReviewsModelCopyWith<$Res> {
  __$ReviewsModelCopyWithImpl(
      _ReviewsModel _value, $Res Function(_ReviewsModel) _then)
      : super(_value, (v) => _then(v as _ReviewsModel));

  @override
  _ReviewsModel get _value => super._value as _ReviewsModel;

  @override
  $Res call({
    Object results = freezed,
  }) {
    return _then(_ReviewsModel(
      results: results == freezed
          ? _value.results
          : results as List<ReviewResultModel>,
    ));
  }
}

@JsonSerializable()
class _$_ReviewsModel implements _ReviewsModel {
  const _$_ReviewsModel({@required @nullable this.results});

  factory _$_ReviewsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ReviewsModelFromJson(json);

  @override
  @nullable
  final List<ReviewResultModel> results;

  @override
  String toString() {
    return 'ReviewsModel(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReviewsModel &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(results);

  @override
  _$ReviewsModelCopyWith<_ReviewsModel> get copyWith =>
      __$ReviewsModelCopyWithImpl<_ReviewsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReviewsModelToJson(this);
  }
}

abstract class _ReviewsModel implements ReviewsModel {
  const factory _ReviewsModel(
      {@required @nullable List<ReviewResultModel> results}) = _$_ReviewsModel;

  factory _ReviewsModel.fromJson(Map<String, dynamic> json) =
      _$_ReviewsModel.fromJson;

  @override
  @nullable
  List<ReviewResultModel> get results;
  @override
  _$ReviewsModelCopyWith<_ReviewsModel> get copyWith;
}

ReviewResultModel _$ReviewResultModelFromJson(Map<String, dynamic> json) {
  return _ReviewResultModel.fromJson(json);
}

class _$ReviewResultModelTearOff {
  const _$ReviewResultModelTearOff();

// ignore: unused_element
  _ReviewResultModel call(
      {@required @nullable String author,
      @required @nullable String content,
      @required @nullable String url}) {
    return _ReviewResultModel(
      author: author,
      content: content,
      url: url,
    );
  }
}

// ignore: unused_element
const $ReviewResultModel = _$ReviewResultModelTearOff();

mixin _$ReviewResultModel {
  @nullable
  String get author;
  @nullable
  String get content;
  @nullable
  String get url;

  Map<String, dynamic> toJson();
  $ReviewResultModelCopyWith<ReviewResultModel> get copyWith;
}

abstract class $ReviewResultModelCopyWith<$Res> {
  factory $ReviewResultModelCopyWith(
          ReviewResultModel value, $Res Function(ReviewResultModel) then) =
      _$ReviewResultModelCopyWithImpl<$Res>;
  $Res call(
      {@nullable String author,
      @nullable String content,
      @nullable String url});
}

class _$ReviewResultModelCopyWithImpl<$Res>
    implements $ReviewResultModelCopyWith<$Res> {
  _$ReviewResultModelCopyWithImpl(this._value, this._then);

  final ReviewResultModel _value;
  // ignore: unused_field
  final $Res Function(ReviewResultModel) _then;

  @override
  $Res call({
    Object author = freezed,
    Object content = freezed,
    Object url = freezed,
  }) {
    return _then(_value.copyWith(
      author: author == freezed ? _value.author : author as String,
      content: content == freezed ? _value.content : content as String,
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

abstract class _$ReviewResultModelCopyWith<$Res>
    implements $ReviewResultModelCopyWith<$Res> {
  factory _$ReviewResultModelCopyWith(
          _ReviewResultModel value, $Res Function(_ReviewResultModel) then) =
      __$ReviewResultModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable String author,
      @nullable String content,
      @nullable String url});
}

class __$ReviewResultModelCopyWithImpl<$Res>
    extends _$ReviewResultModelCopyWithImpl<$Res>
    implements _$ReviewResultModelCopyWith<$Res> {
  __$ReviewResultModelCopyWithImpl(
      _ReviewResultModel _value, $Res Function(_ReviewResultModel) _then)
      : super(_value, (v) => _then(v as _ReviewResultModel));

  @override
  _ReviewResultModel get _value => super._value as _ReviewResultModel;

  @override
  $Res call({
    Object author = freezed,
    Object content = freezed,
    Object url = freezed,
  }) {
    return _then(_ReviewResultModel(
      author: author == freezed ? _value.author : author as String,
      content: content == freezed ? _value.content : content as String,
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

@JsonSerializable()
class _$_ReviewResultModel implements _ReviewResultModel {
  const _$_ReviewResultModel(
      {@required @nullable this.author,
      @required @nullable this.content,
      @required @nullable this.url});

  factory _$_ReviewResultModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ReviewResultModelFromJson(json);

  @override
  @nullable
  final String author;
  @override
  @nullable
  final String content;
  @override
  @nullable
  final String url;

  @override
  String toString() {
    return 'ReviewResultModel(author: $author, content: $content, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReviewResultModel &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(url);

  @override
  _$ReviewResultModelCopyWith<_ReviewResultModel> get copyWith =>
      __$ReviewResultModelCopyWithImpl<_ReviewResultModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReviewResultModelToJson(this);
  }
}

abstract class _ReviewResultModel implements ReviewResultModel {
  const factory _ReviewResultModel(
      {@required @nullable String author,
      @required @nullable String content,
      @required @nullable String url}) = _$_ReviewResultModel;

  factory _ReviewResultModel.fromJson(Map<String, dynamic> json) =
      _$_ReviewResultModel.fromJson;

  @override
  @nullable
  String get author;
  @override
  @nullable
  String get content;
  @override
  @nullable
  String get url;
  @override
  _$ReviewResultModelCopyWith<_ReviewResultModel> get copyWith;
}
