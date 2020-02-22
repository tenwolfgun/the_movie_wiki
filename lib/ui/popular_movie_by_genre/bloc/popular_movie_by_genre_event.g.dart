// GENERATED CODE - DO NOT MODIFY BY HAND

part of popular_movie_by_genre_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PopularMovieByGenreEventInitiated
    extends PopularMovieByGenreEventInitiated {
  @override
  final String genreId;
  @override
  final int page;

  factory _$PopularMovieByGenreEventInitiated(
          [void Function(PopularMovieByGenreEventInitiatedBuilder) updates]) =>
      (new PopularMovieByGenreEventInitiatedBuilder()..update(updates)).build();

  _$PopularMovieByGenreEventInitiated._({this.genreId, this.page}) : super._() {
    if (genreId == null) {
      throw new BuiltValueNullFieldError(
          'PopularMovieByGenreEventInitiated', 'genreId');
    }
    if (page == null) {
      throw new BuiltValueNullFieldError(
          'PopularMovieByGenreEventInitiated', 'page');
    }
  }

  @override
  PopularMovieByGenreEventInitiated rebuild(
          void Function(PopularMovieByGenreEventInitiatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PopularMovieByGenreEventInitiatedBuilder toBuilder() =>
      new PopularMovieByGenreEventInitiatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PopularMovieByGenreEventInitiated &&
        genreId == other.genreId &&
        page == other.page;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, genreId.hashCode), page.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PopularMovieByGenreEventInitiated')
          ..add('genreId', genreId)
          ..add('page', page))
        .toString();
  }
}

class PopularMovieByGenreEventInitiatedBuilder
    implements
        Builder<PopularMovieByGenreEventInitiated,
            PopularMovieByGenreEventInitiatedBuilder> {
  _$PopularMovieByGenreEventInitiated _$v;

  String _genreId;
  String get genreId => _$this._genreId;
  set genreId(String genreId) => _$this._genreId = genreId;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  PopularMovieByGenreEventInitiatedBuilder();

  PopularMovieByGenreEventInitiatedBuilder get _$this {
    if (_$v != null) {
      _genreId = _$v.genreId;
      _page = _$v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PopularMovieByGenreEventInitiated other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PopularMovieByGenreEventInitiated;
  }

  @override
  void update(void Function(PopularMovieByGenreEventInitiatedBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PopularMovieByGenreEventInitiated build() {
    final _$result = _$v ??
        new _$PopularMovieByGenreEventInitiated._(genreId: genreId, page: page);
    replace(_$result);
    return _$result;
  }
}

class _$PopularMovieByGenreEventNextResult
    extends PopularMovieByGenreEventNextResult {
  @override
  final String genreId;
  @override
  final int page;

  factory _$PopularMovieByGenreEventNextResult(
          [void Function(PopularMovieByGenreEventNextResultBuilder) updates]) =>
      (new PopularMovieByGenreEventNextResultBuilder()..update(updates))
          .build();

  _$PopularMovieByGenreEventNextResult._({this.genreId, this.page})
      : super._() {
    if (genreId == null) {
      throw new BuiltValueNullFieldError(
          'PopularMovieByGenreEventNextResult', 'genreId');
    }
    if (page == null) {
      throw new BuiltValueNullFieldError(
          'PopularMovieByGenreEventNextResult', 'page');
    }
  }

  @override
  PopularMovieByGenreEventNextResult rebuild(
          void Function(PopularMovieByGenreEventNextResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PopularMovieByGenreEventNextResultBuilder toBuilder() =>
      new PopularMovieByGenreEventNextResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PopularMovieByGenreEventNextResult &&
        genreId == other.genreId &&
        page == other.page;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, genreId.hashCode), page.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PopularMovieByGenreEventNextResult')
          ..add('genreId', genreId)
          ..add('page', page))
        .toString();
  }
}

class PopularMovieByGenreEventNextResultBuilder
    implements
        Builder<PopularMovieByGenreEventNextResult,
            PopularMovieByGenreEventNextResultBuilder> {
  _$PopularMovieByGenreEventNextResult _$v;

  String _genreId;
  String get genreId => _$this._genreId;
  set genreId(String genreId) => _$this._genreId = genreId;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  PopularMovieByGenreEventNextResultBuilder();

  PopularMovieByGenreEventNextResultBuilder get _$this {
    if (_$v != null) {
      _genreId = _$v.genreId;
      _page = _$v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PopularMovieByGenreEventNextResult other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PopularMovieByGenreEventNextResult;
  }

  @override
  void update(
      void Function(PopularMovieByGenreEventNextResultBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PopularMovieByGenreEventNextResult build() {
    final _$result = _$v ??
        new _$PopularMovieByGenreEventNextResult._(
            genreId: genreId, page: page);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
