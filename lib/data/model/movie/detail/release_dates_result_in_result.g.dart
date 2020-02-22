// GENERATED CODE - DO NOT MODIFY BY HAND

part of release_dates_result_in_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReleaseDatesResultInResult> _$releaseDatesResultInResultSerializer =
    new _$ReleaseDatesResultInResultSerializer();

class _$ReleaseDatesResultInResultSerializer
    implements StructuredSerializer<ReleaseDatesResultInResult> {
  @override
  final Iterable<Type> types = const [
    ReleaseDatesResultInResult,
    _$ReleaseDatesResultInResult
  ];
  @override
  final String wireName = 'ReleaseDatesResultInResult';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ReleaseDatesResultInResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.certification != null) {
      result
        ..add('certification')
        ..add(serializers.serialize(object.certification,
            specifiedType: const FullType(String)));
    }
    if (object.releaseDate != null) {
      result
        ..add('release_date')
        ..add(serializers.serialize(object.releaseDate,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ReleaseDatesResultInResult deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReleaseDatesResultInResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'certification':
          result.certification = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'release_date':
          result.releaseDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ReleaseDatesResultInResult extends ReleaseDatesResultInResult {
  @override
  final String certification;
  @override
  final String releaseDate;

  factory _$ReleaseDatesResultInResult(
          [void Function(ReleaseDatesResultInResultBuilder) updates]) =>
      (new ReleaseDatesResultInResultBuilder()..update(updates)).build();

  _$ReleaseDatesResultInResult._({this.certification, this.releaseDate})
      : super._();

  @override
  ReleaseDatesResultInResult rebuild(
          void Function(ReleaseDatesResultInResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReleaseDatesResultInResultBuilder toBuilder() =>
      new ReleaseDatesResultInResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReleaseDatesResultInResult &&
        certification == other.certification &&
        releaseDate == other.releaseDate;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, certification.hashCode), releaseDate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReleaseDatesResultInResult')
          ..add('certification', certification)
          ..add('releaseDate', releaseDate))
        .toString();
  }
}

class ReleaseDatesResultInResultBuilder
    implements
        Builder<ReleaseDatesResultInResult, ReleaseDatesResultInResultBuilder> {
  _$ReleaseDatesResultInResult _$v;

  String _certification;
  String get certification => _$this._certification;
  set certification(String certification) =>
      _$this._certification = certification;

  String _releaseDate;
  String get releaseDate => _$this._releaseDate;
  set releaseDate(String releaseDate) => _$this._releaseDate = releaseDate;

  ReleaseDatesResultInResultBuilder();

  ReleaseDatesResultInResultBuilder get _$this {
    if (_$v != null) {
      _certification = _$v.certification;
      _releaseDate = _$v.releaseDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReleaseDatesResultInResult other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReleaseDatesResultInResult;
  }

  @override
  void update(void Function(ReleaseDatesResultInResultBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReleaseDatesResultInResult build() {
    final _$result = _$v ??
        new _$ReleaseDatesResultInResult._(
            certification: certification, releaseDate: releaseDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
