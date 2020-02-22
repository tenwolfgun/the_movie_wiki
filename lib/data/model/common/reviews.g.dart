// GENERATED CODE - DO NOT MODIFY BY HAND

part of reviews;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Reviews> _$reviewsSerializer = new _$ReviewsSerializer();

class _$ReviewsSerializer implements StructuredSerializer<Reviews> {
  @override
  final Iterable<Type> types = const [Reviews, _$Reviews];
  @override
  final String wireName = 'Reviews';

  @override
  Iterable<Object> serialize(Serializers serializers, Reviews object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.results != null) {
      result
        ..add('results')
        ..add(serializers.serialize(object.results,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ReviewResult)])));
    }
    return result;
  }

  @override
  Reviews deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReviewsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ReviewResult)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$Reviews extends Reviews {
  @override
  final BuiltList<ReviewResult> results;

  factory _$Reviews([void Function(ReviewsBuilder) updates]) =>
      (new ReviewsBuilder()..update(updates)).build();

  _$Reviews._({this.results}) : super._();

  @override
  Reviews rebuild(void Function(ReviewsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewsBuilder toBuilder() => new ReviewsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Reviews && results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc(0, results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Reviews')..add('results', results))
        .toString();
  }
}

class ReviewsBuilder implements Builder<Reviews, ReviewsBuilder> {
  _$Reviews _$v;

  ListBuilder<ReviewResult> _results;
  ListBuilder<ReviewResult> get results =>
      _$this._results ??= new ListBuilder<ReviewResult>();
  set results(ListBuilder<ReviewResult> results) => _$this._results = results;

  ReviewsBuilder();

  ReviewsBuilder get _$this {
    if (_$v != null) {
      _results = _$v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Reviews other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Reviews;
  }

  @override
  void update(void Function(ReviewsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Reviews build() {
    _$Reviews _$result;
    try {
      _$result = _$v ?? new _$Reviews._(results: _results?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Reviews', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
