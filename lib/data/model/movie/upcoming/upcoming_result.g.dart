// GENERATED CODE - DO NOT MODIFY BY HAND

part of upcoming_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UpcomingResult> _$upcomingResultSerializer =
    new _$UpcomingResultSerializer();

class _$UpcomingResultSerializer
    implements StructuredSerializer<UpcomingResult> {
  @override
  final Iterable<Type> types = const [UpcomingResult, _$UpcomingResult];
  @override
  final String wireName = 'UpcomingResult';

  @override
  Iterable<Object> serialize(Serializers serializers, UpcomingResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'results',
      serializers.serialize(object.results,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Result)])),
    ];

    return result;
  }

  @override
  UpcomingResult deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UpcomingResultBuilder();

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

class _$UpcomingResult extends UpcomingResult {
  @override
  final BuiltList<Result> results;

  factory _$UpcomingResult([void Function(UpcomingResultBuilder) updates]) =>
      (new UpcomingResultBuilder()..update(updates)).build();

  _$UpcomingResult._({this.results}) : super._() {
    if (results == null) {
      throw new BuiltValueNullFieldError('UpcomingResult', 'results');
    }
  }

  @override
  UpcomingResult rebuild(void Function(UpcomingResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpcomingResultBuilder toBuilder() =>
      new UpcomingResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpcomingResult && results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc(0, results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UpcomingResult')
          ..add('results', results))
        .toString();
  }
}

class UpcomingResultBuilder
    implements Builder<UpcomingResult, UpcomingResultBuilder> {
  _$UpcomingResult _$v;

  ListBuilder<Result> _results;
  ListBuilder<Result> get results =>
      _$this._results ??= new ListBuilder<Result>();
  set results(ListBuilder<Result> results) => _$this._results = results;

  UpcomingResultBuilder();

  UpcomingResultBuilder get _$this {
    if (_$v != null) {
      _results = _$v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpcomingResult other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UpcomingResult;
  }

  @override
  void update(void Function(UpcomingResultBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UpcomingResult build() {
    _$UpcomingResult _$result;
    try {
      _$result = _$v ?? new _$UpcomingResult._(results: results.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UpcomingResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
