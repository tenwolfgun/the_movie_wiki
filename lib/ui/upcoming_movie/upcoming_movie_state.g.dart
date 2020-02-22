// GENERATED CODE - DO NOT MODIFY BY HAND

part of upcoming_movie_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpcomingMovieState extends UpcomingMovieState {
  @override
  final bool isLoading;
  @override
  final BuiltList<Result> getResults;
  @override
  final String error;

  factory _$UpcomingMovieState(
          [void Function(UpcomingMovieStateBuilder) updates]) =>
      (new UpcomingMovieStateBuilder()..update(updates)).build();

  _$UpcomingMovieState._({this.isLoading, this.getResults, this.error})
      : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('UpcomingMovieState', 'isLoading');
    }
    if (getResults == null) {
      throw new BuiltValueNullFieldError('UpcomingMovieState', 'getResults');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('UpcomingMovieState', 'error');
    }
  }

  @override
  UpcomingMovieState rebuild(
          void Function(UpcomingMovieStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpcomingMovieStateBuilder toBuilder() =>
      new UpcomingMovieStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpcomingMovieState &&
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
    return (newBuiltValueToStringHelper('UpcomingMovieState')
          ..add('isLoading', isLoading)
          ..add('getResults', getResults)
          ..add('error', error))
        .toString();
  }
}

class UpcomingMovieStateBuilder
    implements Builder<UpcomingMovieState, UpcomingMovieStateBuilder> {
  _$UpcomingMovieState _$v;

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

  UpcomingMovieStateBuilder();

  UpcomingMovieStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _getResults = _$v.getResults?.toBuilder();
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpcomingMovieState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UpcomingMovieState;
  }

  @override
  void update(void Function(UpcomingMovieStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UpcomingMovieState build() {
    _$UpcomingMovieState _$result;
    try {
      _$result = _$v ??
          new _$UpcomingMovieState._(
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
            'UpcomingMovieState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
