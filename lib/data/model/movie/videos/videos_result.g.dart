// GENERATED CODE - DO NOT MODIFY BY HAND

part of videos_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VideosResult> _$videosResultSerializer =
    new _$VideosResultSerializer();

class _$VideosResultSerializer implements StructuredSerializer<VideosResult> {
  @override
  final Iterable<Type> types = const [VideosResult, _$VideosResult];
  @override
  final String wireName = 'VideosResult';

  @override
  Iterable<Object> serialize(Serializers serializers, VideosResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.results != null) {
      result
        ..add('results')
        ..add(serializers.serialize(object.results,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Video)])));
    }
    return result;
  }

  @override
  VideosResult deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VideosResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Video)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$VideosResult extends VideosResult {
  @override
  final BuiltList<Video> results;

  factory _$VideosResult([void Function(VideosResultBuilder) updates]) =>
      (new VideosResultBuilder()..update(updates)).build();

  _$VideosResult._({this.results}) : super._();

  @override
  VideosResult rebuild(void Function(VideosResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VideosResultBuilder toBuilder() => new VideosResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VideosResult && results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc(0, results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VideosResult')
          ..add('results', results))
        .toString();
  }
}

class VideosResultBuilder
    implements Builder<VideosResult, VideosResultBuilder> {
  _$VideosResult _$v;

  ListBuilder<Video> _results;
  ListBuilder<Video> get results =>
      _$this._results ??= new ListBuilder<Video>();
  set results(ListBuilder<Video> results) => _$this._results = results;

  VideosResultBuilder();

  VideosResultBuilder get _$this {
    if (_$v != null) {
      _results = _$v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VideosResult other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$VideosResult;
  }

  @override
  void update(void Function(VideosResultBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$VideosResult build() {
    _$VideosResult _$result;
    try {
      _$result = _$v ?? new _$VideosResult._(results: _results?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'VideosResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
