// GENERATED CODE - DO NOT MODIFY BY HAND

part of similar_movies;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SimilarMovies> _$similarMoviesSerializer =
    new _$SimilarMoviesSerializer();

class _$SimilarMoviesSerializer implements StructuredSerializer<SimilarMovies> {
  @override
  final Iterable<Type> types = const [SimilarMovies, _$SimilarMovies];
  @override
  final String wireName = 'SimilarMovies';

  @override
  Iterable<Object> serialize(Serializers serializers, SimilarMovies object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.results != null) {
      result
        ..add('results')
        ..add(serializers.serialize(object.results,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Result)])));
    }
    return result;
  }

  @override
  SimilarMovies deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SimilarMoviesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
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

class _$SimilarMovies extends SimilarMovies {
  @override
  final BuiltList<Result> results;

  factory _$SimilarMovies([void Function(SimilarMoviesBuilder) updates]) =>
      (new SimilarMoviesBuilder()..update(updates)).build();

  _$SimilarMovies._({this.results}) : super._();

  @override
  SimilarMovies rebuild(void Function(SimilarMoviesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SimilarMoviesBuilder toBuilder() => new SimilarMoviesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SimilarMovies && results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc(0, results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SimilarMovies')
          ..add('results', results))
        .toString();
  }
}

class SimilarMoviesBuilder
    implements Builder<SimilarMovies, SimilarMoviesBuilder> {
  _$SimilarMovies _$v;

  ListBuilder<Result> _results;
  ListBuilder<Result> get results =>
      _$this._results ??= new ListBuilder<Result>();
  set results(ListBuilder<Result> results) => _$this._results = results;

  SimilarMoviesBuilder();

  SimilarMoviesBuilder get _$this {
    if (_$v != null) {
      _results = _$v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SimilarMovies other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SimilarMovies;
  }

  @override
  void update(void Function(SimilarMoviesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SimilarMovies build() {
    _$SimilarMovies _$result;
    try {
      _$result = _$v ?? new _$SimilarMovies._(results: _results?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SimilarMovies', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
