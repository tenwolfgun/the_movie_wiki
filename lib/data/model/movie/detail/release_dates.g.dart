// GENERATED CODE - DO NOT MODIFY BY HAND

part of release_dates;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReleaseDates> _$releaseDatesSerializer =
    new _$ReleaseDatesSerializer();

class _$ReleaseDatesSerializer implements StructuredSerializer<ReleaseDates> {
  @override
  final Iterable<Type> types = const [ReleaseDates, _$ReleaseDates];
  @override
  final String wireName = 'ReleaseDates';

  @override
  Iterable<Object> serialize(Serializers serializers, ReleaseDates object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.results != null) {
      result
        ..add('results')
        ..add(serializers.serialize(object.results,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ReleaseDatesResult)])));
    }
    return result;
  }

  @override
  ReleaseDates deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReleaseDatesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ReleaseDatesResult)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$ReleaseDates extends ReleaseDates {
  @override
  final BuiltList<ReleaseDatesResult> results;

  factory _$ReleaseDates([void Function(ReleaseDatesBuilder) updates]) =>
      (new ReleaseDatesBuilder()..update(updates)).build();

  _$ReleaseDates._({this.results}) : super._();

  @override
  ReleaseDates rebuild(void Function(ReleaseDatesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReleaseDatesBuilder toBuilder() => new ReleaseDatesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReleaseDates && results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc(0, results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReleaseDates')
          ..add('results', results))
        .toString();
  }
}

class ReleaseDatesBuilder
    implements Builder<ReleaseDates, ReleaseDatesBuilder> {
  _$ReleaseDates _$v;

  ListBuilder<ReleaseDatesResult> _results;
  ListBuilder<ReleaseDatesResult> get results =>
      _$this._results ??= new ListBuilder<ReleaseDatesResult>();
  set results(ListBuilder<ReleaseDatesResult> results) =>
      _$this._results = results;

  ReleaseDatesBuilder();

  ReleaseDatesBuilder get _$this {
    if (_$v != null) {
      _results = _$v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReleaseDates other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReleaseDates;
  }

  @override
  void update(void Function(ReleaseDatesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReleaseDates build() {
    _$ReleaseDates _$result;
    try {
      _$result = _$v ?? new _$ReleaseDates._(results: _results?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ReleaseDates', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
