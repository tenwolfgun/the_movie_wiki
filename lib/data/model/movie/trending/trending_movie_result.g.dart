// GENERATED CODE - DO NOT MODIFY BY HAND

part of trending_movie_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TrendingMovieResult> _$trendingMovieResultSerializer =
    new _$TrendingMovieResultSerializer();

class _$TrendingMovieResultSerializer
    implements StructuredSerializer<TrendingMovieResult> {
  @override
  final Iterable<Type> types = const [
    TrendingMovieResult,
    _$TrendingMovieResult
  ];
  @override
  final String wireName = 'TrendingMovieResult';

  @override
  Iterable<Object> serialize(
      Serializers serializers, TrendingMovieResult object,
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
  TrendingMovieResult deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TrendingMovieResultBuilder();

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

class _$TrendingMovieResult extends TrendingMovieResult {
  @override
  final int page;
  @override
  final int totalPages;
  @override
  final BuiltList<Result> results;

  factory _$TrendingMovieResult(
          [void Function(TrendingMovieResultBuilder) updates]) =>
      (new TrendingMovieResultBuilder()..update(updates)).build();

  _$TrendingMovieResult._({this.page, this.totalPages, this.results})
      : super._() {
    if (page == null) {
      throw new BuiltValueNullFieldError('TrendingMovieResult', 'page');
    }
    if (totalPages == null) {
      throw new BuiltValueNullFieldError('TrendingMovieResult', 'totalPages');
    }
    if (results == null) {
      throw new BuiltValueNullFieldError('TrendingMovieResult', 'results');
    }
  }

  @override
  TrendingMovieResult rebuild(
          void Function(TrendingMovieResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrendingMovieResultBuilder toBuilder() =>
      new TrendingMovieResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrendingMovieResult &&
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
    return (newBuiltValueToStringHelper('TrendingMovieResult')
          ..add('page', page)
          ..add('totalPages', totalPages)
          ..add('results', results))
        .toString();
  }
}

class TrendingMovieResultBuilder
    implements Builder<TrendingMovieResult, TrendingMovieResultBuilder> {
  _$TrendingMovieResult _$v;

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

  TrendingMovieResultBuilder();

  TrendingMovieResultBuilder get _$this {
    if (_$v != null) {
      _page = _$v.page;
      _totalPages = _$v.totalPages;
      _results = _$v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrendingMovieResult other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TrendingMovieResult;
  }

  @override
  void update(void Function(TrendingMovieResultBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TrendingMovieResult build() {
    _$TrendingMovieResult _$result;
    try {
      _$result = _$v ??
          new _$TrendingMovieResult._(
              page: page, totalPages: totalPages, results: results.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TrendingMovieResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
