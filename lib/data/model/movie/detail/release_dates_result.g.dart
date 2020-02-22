// GENERATED CODE - DO NOT MODIFY BY HAND

part of release_dates_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReleaseDatesResult> _$releaseDatesResultSerializer =
    new _$ReleaseDatesResultSerializer();

class _$ReleaseDatesResultSerializer
    implements StructuredSerializer<ReleaseDatesResult> {
  @override
  final Iterable<Type> types = const [ReleaseDatesResult, _$ReleaseDatesResult];
  @override
  final String wireName = 'ReleaseDatesResult';

  @override
  Iterable<Object> serialize(Serializers serializers, ReleaseDatesResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.countryCode != null) {
      result
        ..add('iso_3166_1')
        ..add(serializers.serialize(object.countryCode,
            specifiedType: const FullType(String)));
    }
    if (object.releaseDates != null) {
      result
        ..add('release_dates')
        ..add(serializers.serialize(object.releaseDates,
            specifiedType: const FullType(BuiltList,
                const [const FullType(ReleaseDatesResultInResult)])));
    }
    return result;
  }

  @override
  ReleaseDatesResult deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReleaseDatesResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'iso_3166_1':
          result.countryCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'release_dates':
          result.releaseDates.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ReleaseDatesResultInResult)
              ])) as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$ReleaseDatesResult extends ReleaseDatesResult {
  @override
  final String countryCode;
  @override
  final BuiltList<ReleaseDatesResultInResult> releaseDates;

  factory _$ReleaseDatesResult(
          [void Function(ReleaseDatesResultBuilder) updates]) =>
      (new ReleaseDatesResultBuilder()..update(updates)).build();

  _$ReleaseDatesResult._({this.countryCode, this.releaseDates}) : super._();

  @override
  ReleaseDatesResult rebuild(
          void Function(ReleaseDatesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReleaseDatesResultBuilder toBuilder() =>
      new ReleaseDatesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReleaseDatesResult &&
        countryCode == other.countryCode &&
        releaseDates == other.releaseDates;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, countryCode.hashCode), releaseDates.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReleaseDatesResult')
          ..add('countryCode', countryCode)
          ..add('releaseDates', releaseDates))
        .toString();
  }
}

class ReleaseDatesResultBuilder
    implements Builder<ReleaseDatesResult, ReleaseDatesResultBuilder> {
  _$ReleaseDatesResult _$v;

  String _countryCode;
  String get countryCode => _$this._countryCode;
  set countryCode(String countryCode) => _$this._countryCode = countryCode;

  ListBuilder<ReleaseDatesResultInResult> _releaseDates;
  ListBuilder<ReleaseDatesResultInResult> get releaseDates =>
      _$this._releaseDates ??= new ListBuilder<ReleaseDatesResultInResult>();
  set releaseDates(ListBuilder<ReleaseDatesResultInResult> releaseDates) =>
      _$this._releaseDates = releaseDates;

  ReleaseDatesResultBuilder();

  ReleaseDatesResultBuilder get _$this {
    if (_$v != null) {
      _countryCode = _$v.countryCode;
      _releaseDates = _$v.releaseDates?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReleaseDatesResult other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReleaseDatesResult;
  }

  @override
  void update(void Function(ReleaseDatesResultBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReleaseDatesResult build() {
    _$ReleaseDatesResult _$result;
    try {
      _$result = _$v ??
          new _$ReleaseDatesResult._(
              countryCode: countryCode, releaseDates: _releaseDates?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'releaseDates';
        _releaseDates?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ReleaseDatesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
