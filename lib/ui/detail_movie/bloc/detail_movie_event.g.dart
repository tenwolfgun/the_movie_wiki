// GENERATED CODE - DO NOT MODIFY BY HAND

part of detail_movie_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DetailMovieEventInitiated extends DetailMovieEventInitiated {
  @override
  final int id;

  factory _$DetailMovieEventInitiated(
          [void Function(DetailMovieEventInitiatedBuilder) updates]) =>
      (new DetailMovieEventInitiatedBuilder()..update(updates)).build();

  _$DetailMovieEventInitiated._({this.id}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('DetailMovieEventInitiated', 'id');
    }
  }

  @override
  DetailMovieEventInitiated rebuild(
          void Function(DetailMovieEventInitiatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetailMovieEventInitiatedBuilder toBuilder() =>
      new DetailMovieEventInitiatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetailMovieEventInitiated && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DetailMovieEventInitiated')
          ..add('id', id))
        .toString();
  }
}

class DetailMovieEventInitiatedBuilder
    implements
        Builder<DetailMovieEventInitiated, DetailMovieEventInitiatedBuilder> {
  _$DetailMovieEventInitiated _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  DetailMovieEventInitiatedBuilder();

  DetailMovieEventInitiatedBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetailMovieEventInitiated other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DetailMovieEventInitiated;
  }

  @override
  void update(void Function(DetailMovieEventInitiatedBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DetailMovieEventInitiated build() {
    final _$result = _$v ?? new _$DetailMovieEventInitiated._(id: id);
    replace(_$result);
    return _$result;
  }
}

class _$DetailMovieEventAddFavorite extends DetailMovieEventAddFavorite {
  @override
  final int movieId;
  @override
  final String title;
  @override
  final String posterPath;
  @override
  final double voteAverage;

  factory _$DetailMovieEventAddFavorite(
          [void Function(DetailMovieEventAddFavoriteBuilder) updates]) =>
      (new DetailMovieEventAddFavoriteBuilder()..update(updates)).build();

  _$DetailMovieEventAddFavorite._(
      {this.movieId, this.title, this.posterPath, this.voteAverage})
      : super._() {
    if (movieId == null) {
      throw new BuiltValueNullFieldError(
          'DetailMovieEventAddFavorite', 'movieId');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError(
          'DetailMovieEventAddFavorite', 'title');
    }
    if (posterPath == null) {
      throw new BuiltValueNullFieldError(
          'DetailMovieEventAddFavorite', 'posterPath');
    }
    if (voteAverage == null) {
      throw new BuiltValueNullFieldError(
          'DetailMovieEventAddFavorite', 'voteAverage');
    }
  }

  @override
  DetailMovieEventAddFavorite rebuild(
          void Function(DetailMovieEventAddFavoriteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetailMovieEventAddFavoriteBuilder toBuilder() =>
      new DetailMovieEventAddFavoriteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetailMovieEventAddFavorite &&
        movieId == other.movieId &&
        title == other.title &&
        posterPath == other.posterPath &&
        voteAverage == other.voteAverage;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, movieId.hashCode), title.hashCode), posterPath.hashCode),
        voteAverage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DetailMovieEventAddFavorite')
          ..add('movieId', movieId)
          ..add('title', title)
          ..add('posterPath', posterPath)
          ..add('voteAverage', voteAverage))
        .toString();
  }
}

class DetailMovieEventAddFavoriteBuilder
    implements
        Builder<DetailMovieEventAddFavorite,
            DetailMovieEventAddFavoriteBuilder> {
  _$DetailMovieEventAddFavorite _$v;

  int _movieId;
  int get movieId => _$this._movieId;
  set movieId(int movieId) => _$this._movieId = movieId;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _posterPath;
  String get posterPath => _$this._posterPath;
  set posterPath(String posterPath) => _$this._posterPath = posterPath;

  double _voteAverage;
  double get voteAverage => _$this._voteAverage;
  set voteAverage(double voteAverage) => _$this._voteAverage = voteAverage;

  DetailMovieEventAddFavoriteBuilder();

  DetailMovieEventAddFavoriteBuilder get _$this {
    if (_$v != null) {
      _movieId = _$v.movieId;
      _title = _$v.title;
      _posterPath = _$v.posterPath;
      _voteAverage = _$v.voteAverage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetailMovieEventAddFavorite other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DetailMovieEventAddFavorite;
  }

  @override
  void update(void Function(DetailMovieEventAddFavoriteBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DetailMovieEventAddFavorite build() {
    final _$result = _$v ??
        new _$DetailMovieEventAddFavorite._(
            movieId: movieId,
            title: title,
            posterPath: posterPath,
            voteAverage: voteAverage);
    replace(_$result);
    return _$result;
  }
}

class _$DetailMovieEventRemoveFavorite extends DetailMovieEventRemoveFavorite {
  @override
  final int movieId;

  factory _$DetailMovieEventRemoveFavorite(
          [void Function(DetailMovieEventRemoveFavoriteBuilder) updates]) =>
      (new DetailMovieEventRemoveFavoriteBuilder()..update(updates)).build();

  _$DetailMovieEventRemoveFavorite._({this.movieId}) : super._() {
    if (movieId == null) {
      throw new BuiltValueNullFieldError(
          'DetailMovieEventRemoveFavorite', 'movieId');
    }
  }

  @override
  DetailMovieEventRemoveFavorite rebuild(
          void Function(DetailMovieEventRemoveFavoriteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetailMovieEventRemoveFavoriteBuilder toBuilder() =>
      new DetailMovieEventRemoveFavoriteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetailMovieEventRemoveFavorite && movieId == other.movieId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, movieId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DetailMovieEventRemoveFavorite')
          ..add('movieId', movieId))
        .toString();
  }
}

class DetailMovieEventRemoveFavoriteBuilder
    implements
        Builder<DetailMovieEventRemoveFavorite,
            DetailMovieEventRemoveFavoriteBuilder> {
  _$DetailMovieEventRemoveFavorite _$v;

  int _movieId;
  int get movieId => _$this._movieId;
  set movieId(int movieId) => _$this._movieId = movieId;

  DetailMovieEventRemoveFavoriteBuilder();

  DetailMovieEventRemoveFavoriteBuilder get _$this {
    if (_$v != null) {
      _movieId = _$v.movieId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetailMovieEventRemoveFavorite other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DetailMovieEventRemoveFavorite;
  }

  @override
  void update(void Function(DetailMovieEventRemoveFavoriteBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DetailMovieEventRemoveFavorite build() {
    final _$result =
        _$v ?? new _$DetailMovieEventRemoveFavorite._(movieId: movieId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
