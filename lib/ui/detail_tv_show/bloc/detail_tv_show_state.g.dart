// GENERATED CODE - DO NOT MODIFY BY HAND

part of detail_tv_show_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DetailTvShowState extends DetailTvShowState {
  @override
  final bool isLoading;
  @override
  final DetailTvResult result;
  @override
  final String error;
  @override
  final int isFavorite;

  factory _$DetailTvShowState(
          [void Function(DetailTvShowStateBuilder) updates]) =>
      (new DetailTvShowStateBuilder()..update(updates)).build();

  _$DetailTvShowState._(
      {this.isLoading, this.result, this.error, this.isFavorite})
      : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('DetailTvShowState', 'isLoading');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('DetailTvShowState', 'error');
    }
  }

  @override
  DetailTvShowState rebuild(void Function(DetailTvShowStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetailTvShowStateBuilder toBuilder() =>
      new DetailTvShowStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetailTvShowState &&
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
    return (newBuiltValueToStringHelper('DetailTvShowState')
          ..add('isLoading', isLoading)
          ..add('result', result)
          ..add('error', error)
          ..add('isFavorite', isFavorite))
        .toString();
  }
}

class DetailTvShowStateBuilder
    implements Builder<DetailTvShowState, DetailTvShowStateBuilder> {
  _$DetailTvShowState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  DetailTvResultBuilder _result;
  DetailTvResultBuilder get result =>
      _$this._result ??= new DetailTvResultBuilder();
  set result(DetailTvResultBuilder result) => _$this._result = result;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  int _isFavorite;
  int get isFavorite => _$this._isFavorite;
  set isFavorite(int isFavorite) => _$this._isFavorite = isFavorite;

  DetailTvShowStateBuilder();

  DetailTvShowStateBuilder get _$this {
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
  void replace(DetailTvShowState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DetailTvShowState;
  }

  @override
  void update(void Function(DetailTvShowStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DetailTvShowState build() {
    _$DetailTvShowState _$result;
    try {
      _$result = _$v ??
          new _$DetailTvShowState._(
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
            'DetailTvShowState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
