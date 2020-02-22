// GENERATED CODE - DO NOT MODIFY BY HAND

part of genre_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GenreState extends GenreState {
  @override
  final bool isLoading;
  @override
  final BuiltList<Genre> getResults;
  @override
  final String error;

  factory _$GenreState([void Function(GenreStateBuilder) updates]) =>
      (new GenreStateBuilder()..update(updates)).build();

  _$GenreState._({this.isLoading, this.getResults, this.error}) : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('GenreState', 'isLoading');
    }
    if (getResults == null) {
      throw new BuiltValueNullFieldError('GenreState', 'getResults');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('GenreState', 'error');
    }
  }

  @override
  GenreState rebuild(void Function(GenreStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GenreStateBuilder toBuilder() => new GenreStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GenreState &&
        isLoading == other.isLoading &&
        getResults == other.getResults &&
        error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, isLoading.hashCode), getResults.hashCode), error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GenreState')
          ..add('isLoading', isLoading)
          ..add('getResults', getResults)
          ..add('error', error))
        .toString();
  }
}

class GenreStateBuilder implements Builder<GenreState, GenreStateBuilder> {
  _$GenreState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  ListBuilder<Genre> _getResults;
  ListBuilder<Genre> get getResults =>
      _$this._getResults ??= new ListBuilder<Genre>();
  set getResults(ListBuilder<Genre> getResults) =>
      _$this._getResults = getResults;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  GenreStateBuilder();

  GenreStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _getResults = _$v.getResults?.toBuilder();
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenreState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GenreState;
  }

  @override
  void update(void Function(GenreStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GenreState build() {
    _$GenreState _$result;
    try {
      _$result = _$v ??
          new _$GenreState._(
              isLoading: isLoading,
              getResults: getResults.build(),
              error: error);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'getResults';
        getResults.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GenreState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
