// GENERATED CODE - DO NOT MODIFY BY HAND

part of now_playing_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NowPlayingResult> _$nowPlayingResultSerializer =
    new _$NowPlayingResultSerializer();

class _$NowPlayingResultSerializer
    implements StructuredSerializer<NowPlayingResult> {
  @override
  final Iterable<Type> types = const [NowPlayingResult, _$NowPlayingResult];
  @override
  final String wireName = 'NowPlayingResult';

  @override
  Iterable<Object> serialize(Serializers serializers, NowPlayingResult object,
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
  NowPlayingResult deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NowPlayingResultBuilder();

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

class _$NowPlayingResult extends NowPlayingResult {
  @override
  final int page;
  @override
  final int totalPages;
  @override
  final BuiltList<Result> results;

  factory _$NowPlayingResult(
          [void Function(NowPlayingResultBuilder) updates]) =>
      (new NowPlayingResultBuilder()..update(updates)).build();

  _$NowPlayingResult._({this.page, this.totalPages, this.results}) : super._() {
    if (page == null) {
      throw new BuiltValueNullFieldError('NowPlayingResult', 'page');
    }
    if (totalPages == null) {
      throw new BuiltValueNullFieldError('NowPlayingResult', 'totalPages');
    }
    if (results == null) {
      throw new BuiltValueNullFieldError('NowPlayingResult', 'results');
    }
  }

  @override
  NowPlayingResult rebuild(void Function(NowPlayingResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NowPlayingResultBuilder toBuilder() =>
      new NowPlayingResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NowPlayingResult &&
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
    return (newBuiltValueToStringHelper('NowPlayingResult')
          ..add('page', page)
          ..add('totalPages', totalPages)
          ..add('results', results))
        .toString();
  }
}

class NowPlayingResultBuilder
    implements Builder<NowPlayingResult, NowPlayingResultBuilder> {
  _$NowPlayingResult _$v;

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

  NowPlayingResultBuilder();

  NowPlayingResultBuilder get _$this {
    if (_$v != null) {
      _page = _$v.page;
      _totalPages = _$v.totalPages;
      _results = _$v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NowPlayingResult other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NowPlayingResult;
  }

  @override
  void update(void Function(NowPlayingResultBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NowPlayingResult build() {
    _$NowPlayingResult _$result;
    try {
      _$result = _$v ??
          new _$NowPlayingResult._(
              page: page, totalPages: totalPages, results: results.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NowPlayingResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
