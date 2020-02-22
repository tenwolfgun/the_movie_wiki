// GENERATED CODE - DO NOT MODIFY BY HAND

part of top_rated_result_tv_show;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TopRatedResultTvShow> _$topRatedResultTvShowSerializer =
    new _$TopRatedResultTvShowSerializer();

class _$TopRatedResultTvShowSerializer
    implements StructuredSerializer<TopRatedResultTvShow> {
  @override
  final Iterable<Type> types = const [
    TopRatedResultTvShow,
    _$TopRatedResultTvShow
  ];
  @override
  final String wireName = 'TopRatedResultTvShow';

  @override
  Iterable<Object> serialize(
      Serializers serializers, TopRatedResultTvShow object,
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
              const FullType(BuiltList, const [const FullType(TvShowResult)])),
    ];

    return result;
  }

  @override
  TopRatedResultTvShow deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TopRatedResultTvShowBuilder();

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
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TvShowResult)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$TopRatedResultTvShow extends TopRatedResultTvShow {
  @override
  final int page;
  @override
  final int totalPages;
  @override
  final BuiltList<TvShowResult> results;

  factory _$TopRatedResultTvShow(
          [void Function(TopRatedResultTvShowBuilder) updates]) =>
      (new TopRatedResultTvShowBuilder()..update(updates)).build();

  _$TopRatedResultTvShow._({this.page, this.totalPages, this.results})
      : super._() {
    if (page == null) {
      throw new BuiltValueNullFieldError('TopRatedResultTvShow', 'page');
    }
    if (totalPages == null) {
      throw new BuiltValueNullFieldError('TopRatedResultTvShow', 'totalPages');
    }
    if (results == null) {
      throw new BuiltValueNullFieldError('TopRatedResultTvShow', 'results');
    }
  }

  @override
  TopRatedResultTvShow rebuild(
          void Function(TopRatedResultTvShowBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TopRatedResultTvShowBuilder toBuilder() =>
      new TopRatedResultTvShowBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TopRatedResultTvShow &&
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
    return (newBuiltValueToStringHelper('TopRatedResultTvShow')
          ..add('page', page)
          ..add('totalPages', totalPages)
          ..add('results', results))
        .toString();
  }
}

class TopRatedResultTvShowBuilder
    implements Builder<TopRatedResultTvShow, TopRatedResultTvShowBuilder> {
  _$TopRatedResultTvShow _$v;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  int _totalPages;
  int get totalPages => _$this._totalPages;
  set totalPages(int totalPages) => _$this._totalPages = totalPages;

  ListBuilder<TvShowResult> _results;
  ListBuilder<TvShowResult> get results =>
      _$this._results ??= new ListBuilder<TvShowResult>();
  set results(ListBuilder<TvShowResult> results) => _$this._results = results;

  TopRatedResultTvShowBuilder();

  TopRatedResultTvShowBuilder get _$this {
    if (_$v != null) {
      _page = _$v.page;
      _totalPages = _$v.totalPages;
      _results = _$v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TopRatedResultTvShow other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TopRatedResultTvShow;
  }

  @override
  void update(void Function(TopRatedResultTvShowBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TopRatedResultTvShow build() {
    _$TopRatedResultTvShow _$result;
    try {
      _$result = _$v ??
          new _$TopRatedResultTvShow._(
              page: page, totalPages: totalPages, results: results.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TopRatedResultTvShow', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
