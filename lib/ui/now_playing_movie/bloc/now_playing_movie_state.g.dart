// GENERATED CODE - DO NOT MODIFY BY HAND

part of now_playing_movie_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NowPlayingMovieState extends NowPlayingMovieState {
  @override
  final bool isLoading;
  @override
  final BuiltList<Result> getResults;
  @override
  final String error;
  @override
  final bool endOfResult;

  factory _$NowPlayingMovieState(
          [void Function(NowPlayingMovieStateBuilder) updates]) =>
      (new NowPlayingMovieStateBuilder()..update(updates)).build();

  _$NowPlayingMovieState._(
      {this.isLoading, this.getResults, this.error, this.endOfResult})
      : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('NowPlayingMovieState', 'isLoading');
    }
    if (getResults == null) {
      throw new BuiltValueNullFieldError('NowPlayingMovieState', 'getResults');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('NowPlayingMovieState', 'error');
    }
    if (endOfResult == null) {
      throw new BuiltValueNullFieldError('NowPlayingMovieState', 'endOfResult');
    }
  }

  @override
  NowPlayingMovieState rebuild(
          void Function(NowPlayingMovieStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NowPlayingMovieStateBuilder toBuilder() =>
      new NowPlayingMovieStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NowPlayingMovieState &&
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
    return (newBuiltValueToStringHelper('NowPlayingMovieState')
          ..add('isLoading', isLoading)
          ..add('getResults', getResults)
          ..add('error', error)
          ..add('endOfResult', endOfResult))
        .toString();
  }
}

class NowPlayingMovieStateBuilder
    implements Builder<NowPlayingMovieState, NowPlayingMovieStateBuilder> {
  _$NowPlayingMovieState _$v;

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

  NowPlayingMovieStateBuilder();

  NowPlayingMovieStateBuilder get _$this {
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
  void replace(NowPlayingMovieState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NowPlayingMovieState;
  }

  @override
  void update(void Function(NowPlayingMovieStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NowPlayingMovieState build() {
    _$NowPlayingMovieState _$result;
    try {
      _$result = _$v ??
          new _$NowPlayingMovieState._(
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
            'NowPlayingMovieState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
