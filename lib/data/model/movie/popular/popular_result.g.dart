// GENERATED CODE - DO NOT MODIFY BY HAND

part of popular_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PopularResult> _$popularResultSerializer =
    new _$PopularResultSerializer();

class _$PopularResultSerializer implements StructuredSerializer<PopularResult> {
  @override
  final Iterable<Type> types = const [PopularResult, _$PopularResult];
  @override
  final String wireName = 'PopularResult';

  @override
  Iterable<Object> serialize(Serializers serializers, PopularResult object,
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
  PopularResult deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PopularResultBuilder();

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

class _$PopularResult extends PopularResult {
  @override
  final int page;
  @override
  final int totalPages;
  @override
  final BuiltList<Result> results;

  factory _$PopularResult([void Function(PopularResultBuilder) updates]) =>
      (new PopularResultBuilder()..update(updates)).build();

  _$PopularResult._({this.page, this.totalPages, this.results}) : super._() {
    if (page == null) {
      throw new BuiltValueNullFieldError('PopularResult', 'page');
    }
    if (totalPages == null) {
      throw new BuiltValueNullFieldError('PopularResult', 'totalPages');
    }
    if (results == null) {
      throw new BuiltValueNullFieldError('PopularResult', 'results');
    }
  }

  @override
  PopularResult rebuild(void Function(PopularResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PopularResultBuilder toBuilder() => new PopularResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PopularResult &&
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
    return (newBuiltValueToStringHelper('PopularResult')
          ..add('page', page)
          ..add('totalPages', totalPages)
          ..add('results', results))
        .toString();
  }
}

class PopularResultBuilder
    implements Builder<PopularResult, PopularResultBuilder> {
  _$PopularResult _$v;

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

  PopularResultBuilder();

  PopularResultBuilder get _$this {
    if (_$v != null) {
      _page = _$v.page;
      _totalPages = _$v.totalPages;
      _results = _$v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PopularResult other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PopularResult;
  }

  @override
  void update(void Function(PopularResultBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PopularResult build() {
    _$PopularResult _$result;
    try {
      _$result = _$v ??
          new _$PopularResult._(
              page: page, totalPages: totalPages, results: results.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PopularResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
