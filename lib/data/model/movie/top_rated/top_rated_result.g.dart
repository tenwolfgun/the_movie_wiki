// GENERATED CODE - DO NOT MODIFY BY HAND

part of top_;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TopRatedResult> _$topRatedResultSerializer =
    new _$TopRatedResultSerializer();

class _$TopRatedResultSerializer
    implements StructuredSerializer<TopRatedResult> {
  @override
  final Iterable<Type> types = const [TopRatedResult, _$TopRatedResult];
  @override
  final String wireName = 'TopRatedResult';

  @override
  Iterable<Object> serialize(Serializers serializers, TopRatedResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'page',
      serializers.serialize(object.page, specifiedType: const FullType(int)),
      'total_pages',
      serializers.serialize(object.totalPages,
          specifiedType: const FullType(int)),
      'results',
      serializers.serialize(object.results,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Result)])),
    ];

    return result;
  }

  @override
  TopRatedResult deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TopRatedResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_pages':
          result.totalPages = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Result)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$TopRatedResult extends TopRatedResult {
  @override
  final int page;
  @override
  final int totalPages;
  @override
  final BuiltList<Result> results;

  factory _$TopRatedResult([void Function(TopRatedResultBuilder) updates]) =>
      (new TopRatedResultBuilder()..update(updates)).build();

  _$TopRatedResult._({this.page, this.totalPages, this.results}) : super._() {
    if (page == null) {
      throw new BuiltValueNullFieldError('TopRatedResult', 'page');
    }
    if (totalPages == null) {
      throw new BuiltValueNullFieldError('TopRatedResult', 'totalPages');
    }
    if (results == null) {
      throw new BuiltValueNullFieldError('TopRatedResult', 'results');
    }
  }

  @override
  TopRatedResult rebuild(void Function(TopRatedResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TopRatedResultBuilder toBuilder() =>
      new TopRatedResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TopRatedResult &&
        page == other.page &&
        totalPages == other.totalPages &&
        results == other.results;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, page.hashCode), totalPages.hashCode), results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TopRatedResult')
          ..add('page', page)
          ..add('totalPages', totalPages)
          ..add('results', results))
        .toString();
  }
}

class TopRatedResultBuilder
    implements Builder<TopRatedResult, TopRatedResultBuilder> {
  _$TopRatedResult _$v;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  int _totalPages;
  int get totalPages => _$this._totalPages;
  set totalPages(int totalPages) => _$this._totalPages = totalPages;

  ListBuilder<Result> _results;
  ListBuilder<Result> get results =>
      _$this._results ??= new ListBuilder<Result>();
  set results(ListBuilder<Result> results) => _$this._results = results;

  TopRatedResultBuilder();

  TopRatedResultBuilder get _$this {
    if (_$v != null) {
      _page = _$v.page;
      _totalPages = _$v.totalPages;
      _results = _$v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TopRatedResult other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TopRatedResult;
  }

  @override
  void update(void Function(TopRatedResultBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TopRatedResult build() {
    _$TopRatedResult _$result;
    try {
      _$result = _$v ??
          new _$TopRatedResult._(
              page: page, totalPages: totalPages, results: results.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TopRatedResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
