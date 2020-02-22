// GENERATED CODE - DO NOT MODIFY BY HAND

part of airing_today_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AiringTodayResult> _$airingTodayResultSerializer =
    new _$AiringTodayResultSerializer();

class _$AiringTodayResultSerializer
    implements StructuredSerializer<AiringTodayResult> {
  @override
  final Iterable<Type> types = const [AiringTodayResult, _$AiringTodayResult];
  @override
  final String wireName = 'AiringTodayResult';

  @override
  Iterable<Object> serialize(Serializers serializers, AiringTodayResult object,
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
  AiringTodayResult deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AiringTodayResultBuilder();

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

class _$AiringTodayResult extends AiringTodayResult {
  @override
  final int page;
  @override
  final int totalPages;
  @override
  final BuiltList<TvShowResult> results;

  factory _$AiringTodayResult(
          [void Function(AiringTodayResultBuilder) updates]) =>
      (new AiringTodayResultBuilder()..update(updates)).build();

  _$AiringTodayResult._({this.page, this.totalPages, this.results})
      : super._() {
    if (page == null) {
      throw new BuiltValueNullFieldError('AiringTodayResult', 'page');
    }
    if (totalPages == null) {
      throw new BuiltValueNullFieldError('AiringTodayResult', 'totalPages');
    }
    if (results == null) {
      throw new BuiltValueNullFieldError('AiringTodayResult', 'results');
    }
  }

  @override
  AiringTodayResult rebuild(void Function(AiringTodayResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AiringTodayResultBuilder toBuilder() =>
      new AiringTodayResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AiringTodayResult &&
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
    return (newBuiltValueToStringHelper('AiringTodayResult')
          ..add('page', page)
          ..add('totalPages', totalPages)
          ..add('results', results))
        .toString();
  }
}

class AiringTodayResultBuilder
    implements Builder<AiringTodayResult, AiringTodayResultBuilder> {
  _$AiringTodayResult _$v;

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

  AiringTodayResultBuilder();

  AiringTodayResultBuilder get _$this {
    if (_$v != null) {
      _page = _$v.page;
      _totalPages = _$v.totalPages;
      _results = _$v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AiringTodayResult other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AiringTodayResult;
  }

  @override
  void update(void Function(AiringTodayResultBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AiringTodayResult build() {
    _$AiringTodayResult _$result;
    try {
      _$result = _$v ??
          new _$AiringTodayResult._(
              page: page, totalPages: totalPages, results: results.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AiringTodayResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
