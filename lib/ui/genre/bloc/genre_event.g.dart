// GENERATED CODE - DO NOT MODIFY BY HAND

part of genre_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GenreEventInitiated extends GenreEventInitiated {
  @override
  final String genreType;

  factory _$GenreEventInitiated(
          [void Function(GenreEventInitiatedBuilder) updates]) =>
      (new GenreEventInitiatedBuilder()..update(updates)).build();

  _$GenreEventInitiated._({this.genreType}) : super._() {
    if (genreType == null) {
      throw new BuiltValueNullFieldError('GenreEventInitiated', 'genreType');
    }
  }

  @override
  GenreEventInitiated rebuild(
          void Function(GenreEventInitiatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GenreEventInitiatedBuilder toBuilder() =>
      new GenreEventInitiatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GenreEventInitiated && genreType == other.genreType;
  }

  @override
  int get hashCode {
    return $jf($jc(0, genreType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GenreEventInitiated')
          ..add('genreType', genreType))
        .toString();
  }
}

class GenreEventInitiatedBuilder
    implements Builder<GenreEventInitiated, GenreEventInitiatedBuilder> {
  _$GenreEventInitiated _$v;

  String _genreType;
  String get genreType => _$this._genreType;
  set genreType(String genreType) => _$this._genreType = genreType;

  GenreEventInitiatedBuilder();

  GenreEventInitiatedBuilder get _$this {
    if (_$v != null) {
      _genreType = _$v.genreType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenreEventInitiated other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GenreEventInitiated;
  }

  @override
  void update(void Function(GenreEventInitiatedBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GenreEventInitiated build() {
    final _$result = _$v ?? new _$GenreEventInitiated._(genreType: genreType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
