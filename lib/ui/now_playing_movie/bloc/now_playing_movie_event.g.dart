// GENERATED CODE - DO NOT MODIFY BY HAND

part of now_playing_movie_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NowPlayingMovieInitiated extends NowPlayingMovieInitiated {
  @override
  final int page;

  factory _$NowPlayingMovieInitiated(
          [void Function(NowPlayingMovieInitiatedBuilder) updates]) =>
      (new NowPlayingMovieInitiatedBuilder()..update(updates)).build();

  _$NowPlayingMovieInitiated._({this.page}) : super._() {
    if (page == null) {
      throw new BuiltValueNullFieldError('NowPlayingMovieInitiated', 'page');
    }
  }

  @override
  NowPlayingMovieInitiated rebuild(
          void Function(NowPlayingMovieInitiatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NowPlayingMovieInitiatedBuilder toBuilder() =>
      new NowPlayingMovieInitiatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NowPlayingMovieInitiated && page == other.page;
  }

  @override
  int get hashCode {
    return $jf($jc(0, page.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NowPlayingMovieInitiated')
          ..add('page', page))
        .toString();
  }
}

class NowPlayingMovieInitiatedBuilder
    implements
        Builder<NowPlayingMovieInitiated, NowPlayingMovieInitiatedBuilder> {
  _$NowPlayingMovieInitiated _$v;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  NowPlayingMovieInitiatedBuilder();

  NowPlayingMovieInitiatedBuilder get _$this {
    if (_$v != null) {
      _page = _$v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NowPlayingMovieInitiated other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NowPlayingMovieInitiated;
  }

  @override
  void update(void Function(NowPlayingMovieInitiatedBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NowPlayingMovieInitiated build() {
    final _$result = _$v ?? new _$NowPlayingMovieInitiated._(page: page);
    replace(_$result);
    return _$result;
  }
}

class _$NowPlayingMovieNextResult extends NowPlayingMovieNextResult {
  @override
  final int page;

  factory _$NowPlayingMovieNextResult(
          [void Function(NowPlayingMovieNextResultBuilder) updates]) =>
      (new NowPlayingMovieNextResultBuilder()..update(updates)).build();

  _$NowPlayingMovieNextResult._({this.page}) : super._() {
    if (page == null) {
      throw new BuiltValueNullFieldError('NowPlayingMovieNextResult', 'page');
    }
  }

  @override
  NowPlayingMovieNextResult rebuild(
          void Function(NowPlayingMovieNextResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NowPlayingMovieNextResultBuilder toBuilder() =>
      new NowPlayingMovieNextResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NowPlayingMovieNextResult && page == other.page;
  }

  @override
  int get hashCode {
    return $jf($jc(0, page.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NowPlayingMovieNextResult')
          ..add('page', page))
        .toString();
  }
}

class NowPlayingMovieNextResultBuilder
    implements
        Builder<NowPlayingMovieNextResult, NowPlayingMovieNextResultBuilder> {
  _$NowPlayingMovieNextResult _$v;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  NowPlayingMovieNextResultBuilder();

  NowPlayingMovieNextResultBuilder get _$this {
    if (_$v != null) {
      _page = _$v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NowPlayingMovieNextResult other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NowPlayingMovieNextResult;
  }

  @override
  void update(void Function(NowPlayingMovieNextResultBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NowPlayingMovieNextResult build() {
    final _$result = _$v ?? new _$NowPlayingMovieNextResult._(page: page);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
