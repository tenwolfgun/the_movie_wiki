// GENERATED CODE - DO NOT MODIFY BY HAND

part of detail_movie_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DetailMovieState extends DetailMovieState {
  @override
  final bool isLoading;
  @override
  final DetailMovieResult result;
  @override
  final String error;
  @override
  final int isFavorite;

  factory _$DetailMovieState(
          [void Function(DetailMovieStateBuilder) updates]) =>
      (new DetailMovieStateBuilder()..update(updates)).build();

  _$DetailMovieState._(
      {this.isLoading, this.result, this.error, this.isFavorite})
      : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('DetailMovieState', 'isLoading');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('DetailMovieState', 'error');
    }
  }

  @override
  DetailMovieState rebuild(void Function(DetailMovieStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetailMovieStateBuilder toBuilder() =>
      new DetailMovieStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetailMovieState &&
        isLoading == other.isLoading &&
        result == other.result &&
        error == other.error &&
        isFavorite == other.isFavorite;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, isLoading.hashCode), result.hashCode), error.hashCode),
        isFavorite.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DetailMovieState')
          ..add('isLoading', isLoading)
          ..add('result', result)
          ..add('error', error)
          ..add('isFavorite', isFavorite))
        .toString();
  }
}

class DetailMovieStateBuilder
    implements Builder<DetailMovieState, DetailMovieStateBuilder> {
  _$DetailMovieState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  DetailMovieResultBuilder _result;
  DetailMovieResultBuilder get result =>
      _$this._result ??= new DetailMovieResultBuilder();
  set result(DetailMovieResultBuilder result) => _$this._result = result;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  int _isFavorite;
  int get isFavorite => _$this._isFavorite;
  set isFavorite(int isFavorite) => _$this._isFavorite = isFavorite;

  DetailMovieStateBuilder();

  DetailMovieStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _result = _$v.result?.toBuilder();
      _error = _$v.error;
      _isFavorite = _$v.isFavorite;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetailMovieState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DetailMovieState;
  }

  @override
  void update(void Function(DetailMovieStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DetailMovieState build() {
    _$DetailMovieState _$result;
    try {
      _$result = _$v ??
          new _$DetailMovieState._(
              isLoading: isLoading,
              result: _result?.build(),
              error: error,
              isFavorite: isFavorite);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'result';
        _result?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DetailMovieState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
