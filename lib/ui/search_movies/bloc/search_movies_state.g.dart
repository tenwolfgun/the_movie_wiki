// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_movies_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SearchMoviesState extends SearchMoviesState {
  @override
  final bool isLoading;
  @override
  final BuiltList<Result> getResults;
  @override
  final String error;
  @override
  final bool endOfResult;

  factory _$SearchMoviesState(
          [void Function(SearchMoviesStateBuilder) updates]) =>
      (new SearchMoviesStateBuilder()..update(updates)).build();

  _$SearchMoviesState._(
      {this.isLoading, this.getResults, this.error, this.endOfResult})
      : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('SearchMoviesState', 'isLoading');
    }
    if (getResults == null) {
      throw new BuiltValueNullFieldError('SearchMoviesState', 'getResults');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('SearchMoviesState', 'error');
    }
    if (endOfResult == null) {
      throw new BuiltValueNullFieldError('SearchMoviesState', 'endOfResult');
    }
  }

  @override
  SearchMoviesState rebuild(void Function(SearchMoviesStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchMoviesStateBuilder toBuilder() =>
      new SearchMoviesStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchMoviesState &&
        isLoading == other.isLoading &&
        getResults == other.getResults &&
        error == other.error &&
        endOfResult == other.endOfResult;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, isLoading.hashCode), getResults.hashCode),
            error.hashCode),
        endOfResult.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchMoviesState')
          ..add('isLoading', isLoading)
          ..add('getResults', getResults)
          ..add('error', error)
          ..add('endOfResult', endOfResult))
        .toString();
  }
}

class SearchMoviesStateBuilder
    implements Builder<SearchMoviesState, SearchMoviesStateBuilder> {
  _$SearchMoviesState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  ListBuilder<Result> _getResults;
  ListBuilder<Result> get getResults =>
      _$this._getResults ??= new ListBuilder<Result>();
  set getResults(ListBuilder<Result> getResults) =>
      _$this._getResults = getResults;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  bool _endOfResult;
  bool get endOfResult => _$this._endOfResult;
  set endOfResult(bool endOfResult) => _$this._endOfResult = endOfResult;

  SearchMoviesStateBuilder();

  SearchMoviesStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _getResults = _$v.getResults?.toBuilder();
      _error = _$v.error;
      _endOfResult = _$v.endOfResult;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchMoviesState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SearchMoviesState;
  }

  @override
  void update(void Function(SearchMoviesStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchMoviesState build() {
    _$SearchMoviesState _$result;
    try {
      _$result = _$v ??
          new _$SearchMoviesState._(
              isLoading: isLoading,
              getResults: getResults.build(),
              error: error,
              endOfResult: endOfResult);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'getResults';
        getResults.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SearchMoviesState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
