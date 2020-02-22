// GENERATED CODE - DO NOT MODIFY BY HAND

part of trending_people_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TrendingPeopleResult> _$trendingPeopleResultSerializer =
    new _$TrendingPeopleResultSerializer();

class _$TrendingPeopleResultSerializer
    implements StructuredSerializer<TrendingPeopleResult> {
  @override
  final Iterable<Type> types = const [
    TrendingPeopleResult,
    _$TrendingPeopleResult
  ];
  @override
  final String wireName = 'TrendingPeopleResult';

  @override
  Iterable<Object> serialize(
      Serializers serializers, TrendingPeopleResult object,
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
              const FullType(BuiltList, const [const FullType(PeopleResult)])),
    ];

    return result;
  }

  @override
  TrendingPeopleResult deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TrendingPeopleResultBuilder();

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
                      BuiltList, const [const FullType(PeopleResult)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$TrendingPeopleResult extends TrendingPeopleResult {
  @override
  final int page;
  @override
  final int totalPages;
  @override
  final BuiltList<PeopleResult> results;

  factory _$TrendingPeopleResult(
          [void Function(TrendingPeopleResultBuilder) updates]) =>
      (new TrendingPeopleResultBuilder()..update(updates)).build();

  _$TrendingPeopleResult._({this.page, this.totalPages, this.results})
      : super._() {
    if (page == null) {
      throw new BuiltValueNullFieldError('TrendingPeopleResult', 'page');
    }
    if (totalPages == null) {
      throw new BuiltValueNullFieldError('TrendingPeopleResult', 'totalPages');
    }
    if (results == null) {
      throw new BuiltValueNullFieldError('TrendingPeopleResult', 'results');
    }
  }

  @override
  TrendingPeopleResult rebuild(
          void Function(TrendingPeopleResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrendingPeopleResultBuilder toBuilder() =>
      new TrendingPeopleResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrendingPeopleResult &&
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
    return (newBuiltValueToStringHelper('TrendingPeopleResult')
          ..add('page', page)
          ..add('totalPages', totalPages)
          ..add('results', results))
        .toString();
  }
}

class TrendingPeopleResultBuilder
    implements Builder<TrendingPeopleResult, TrendingPeopleResultBuilder> {
  _$TrendingPeopleResult _$v;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  int _totalPages;
  int get totalPages => _$this._totalPages;
  set totalPages(int totalPages) => _$this._totalPages = totalPages;

  ListBuilder<PeopleResult> _results;
  ListBuilder<PeopleResult> get results =>
      _$this._results ??= new ListBuilder<PeopleResult>();
  set results(ListBuilder<PeopleResult> results) => _$this._results = results;

  TrendingPeopleResultBuilder();

  TrendingPeopleResultBuilder get _$this {
    if (_$v != null) {
      _page = _$v.page;
      _totalPages = _$v.totalPages;
      _results = _$v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrendingPeopleResult other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TrendingPeopleResult;
  }

  @override
  void update(void Function(TrendingPeopleResultBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TrendingPeopleResult build() {
    _$TrendingPeopleResult _$result;
    try {
      _$result = _$v ??
          new _$TrendingPeopleResult._(
              page: page, totalPages: totalPages, results: results.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TrendingPeopleResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
