// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'review_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ReviewResultTearOff {
  const _$ReviewResultTearOff();

// ignore: unused_element
  _ReviewResult call(
      {@required @nullable String author,
      @required @nullable String content,
      @required @nullable String url}) {
    return _ReviewResult(
      author: author,
      content: content,
      url: url,
    );
  }
}

// ignore: unused_element
const $ReviewResult = _$ReviewResultTearOff();

mixin _$ReviewResult {
  @nullable
  String get author;
  @nullable
  String get content;
  @nullable
  String get url;

  $ReviewResultCopyWith<ReviewResult> get copyWith;
}

abstract class $ReviewResultCopyWith<$Res> {
  factory $ReviewResultCopyWith(
          ReviewResult value, $Res Function(ReviewResult) then) =
      _$ReviewResultCopyWithImpl<$Res>;
  $Res call(
      {@nullable String author,
      @nullable String content,
      @nullable String url});
}

class _$ReviewResultCopyWithImpl<$Res> implements $ReviewResultCopyWith<$Res> {
  _$ReviewResultCopyWithImpl(this._value, this._then);

  final ReviewResult _value;
  // ignore: unused_field
  final $Res Function(ReviewResult) _then;

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

abstract class _$ReviewResultCopyWith<$Res>
    implements $ReviewResultCopyWith<$Res> {
  factory _$ReviewResultCopyWith(
          _ReviewResult value, $Res Function(_ReviewResult) then) =
      __$ReviewResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable String author,
      @nullable String content,
      @nullable String url});
}

class __$ReviewResultCopyWithImpl<$Res> extends _$ReviewResultCopyWithImpl<$Res>
    implements _$ReviewResultCopyWith<$Res> {
  __$ReviewResultCopyWithImpl(
      _ReviewResult _value, $Res Function(_ReviewResult) _then)
      : super(_value, (v) => _then(v as _ReviewResult));

  @override
  _ReviewResult get _value => super._value as _ReviewResult;

  @override
  $Res call({
    Object author = freezed,
    Object content = freezed,
    Object url = freezed,
  }) {
    return _then(_ReviewResult(
      author: author == freezed ? _value.author : author as String,
      content: content == freezed ? _value.content : content as String,
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

class _$_ReviewResult implements _ReviewResult {
  const _$_ReviewResult(
      {@required @nullable this.author,
      @required @nullable this.content,
      @required @nullable this.url});

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
    return 'ReviewResult(author: $author, content: $content, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReviewResult &&
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
  _$ReviewResultCopyWith<_ReviewResult> get copyWith =>
      __$ReviewResultCopyWithImpl<_ReviewResult>(this, _$identity);
}

abstract class _ReviewResult implements ReviewResult {
  const factory _ReviewResult(
      {@required @nullable String author,
      @required @nullable String content,
      @required @nullable String url}) = _$_ReviewResult;

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
  _$ReviewResultCopyWith<_ReviewResult> get copyWith;
}
