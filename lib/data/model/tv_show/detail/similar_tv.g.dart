// GENERATED CODE - DO NOT MODIFY BY HAND

part of similar_tv;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SimilarTv> _$similarTvSerializer = new _$SimilarTvSerializer();

class _$SimilarTvSerializer implements StructuredSerializer<SimilarTv> {
  @override
  final Iterable<Type> types = const [SimilarTv, _$SimilarTv];
  @override
  final String wireName = 'SimilarTv';

  @override
  Iterable<Object> serialize(Serializers serializers, SimilarTv object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.results != null) {
      result
        ..add('results')
        ..add(serializers.serialize(object.results,
            specifiedType: const FullType(
                BuiltList, const [const FullType(TvShowResult)])));
    }
    return result;
  }

  @override
  SimilarTv deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SimilarTvBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
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

class _$SimilarTv extends SimilarTv {
  @override
  final BuiltList<TvShowResult> results;

  factory _$SimilarTv([void Function(SimilarTvBuilder) updates]) =>
      (new SimilarTvBuilder()..update(updates)).build();

  _$SimilarTv._({this.results}) : super._();

  @override
  SimilarTv rebuild(void Function(SimilarTvBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SimilarTvBuilder toBuilder() => new SimilarTvBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SimilarTv && results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc(0, results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SimilarTv')..add('results', results))
        .toString();
  }
}

class SimilarTvBuilder implements Builder<SimilarTv, SimilarTvBuilder> {
  _$SimilarTv _$v;

  ListBuilder<TvShowResult> _results;
  ListBuilder<TvShowResult> get results =>
      _$this._results ??= new ListBuilder<TvShowResult>();
  set results(ListBuilder<TvShowResult> results) => _$this._results = results;

  SimilarTvBuilder();

  SimilarTvBuilder get _$this {
    if (_$v != null) {
      _results = _$v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SimilarTv other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SimilarTv;
  }

  @override
  void update(void Function(SimilarTvBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SimilarTv build() {
    _$SimilarTv _$result;
    try {
      _$result = _$v ?? new _$SimilarTv._(results: _results?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SimilarTv', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
