// GENERATED CODE - DO NOT MODIFY BY HAND

part of review_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReviewResult> _$reviewResultSerializer =
    new _$ReviewResultSerializer();

class _$ReviewResultSerializer implements StructuredSerializer<ReviewResult> {
  @override
  final Iterable<Type> types = const [ReviewResult, _$ReviewResult];
  @override
  final String wireName = 'ReviewResult';

  @override
  Iterable<Object> serialize(Serializers serializers, ReviewResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.author != null) {
      result
        ..add('author')
        ..add(serializers.serialize(object.author,
            specifiedType: const FullType(String)));
    }
    if (object.content != null) {
      result
        ..add('content')
        ..add(serializers.serialize(object.content,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ReviewResult deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReviewResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'author':
          result.author = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ReviewResult extends ReviewResult {
  @override
  final String author;
  @override
  final String content;
  @override
  final String url;

  factory _$ReviewResult([void Function(ReviewResultBuilder) updates]) =>
      (new ReviewResultBuilder()..update(updates)).build();

  _$ReviewResult._({this.author, this.content, this.url}) : super._();

  @override
  ReviewResult rebuild(void Function(ReviewResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewResultBuilder toBuilder() => new ReviewResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReviewResult &&
        author == other.author &&
        content == other.content &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, author.hashCode), content.hashCode), url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReviewResult')
          ..add('author', author)
          ..add('content', content)
          ..add('url', url))
        .toString();
  }
}

class ReviewResultBuilder
    implements Builder<ReviewResult, ReviewResultBuilder> {
  _$ReviewResult _$v;

  String _author;
  String get author => _$this._author;
  set author(String author) => _$this._author = author;

  String _content;
  String get content => _$this._content;
  set content(String content) => _$this._content = content;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  ReviewResultBuilder();

  ReviewResultBuilder get _$this {
    if (_$v != null) {
      _author = _$v.author;
      _content = _$v.content;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReviewResult other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReviewResult;
  }

  @override
  void update(void Function(ReviewResultBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReviewResult build() {
    final _$result =
        _$v ?? new _$ReviewResult._(author: author, content: content, url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
