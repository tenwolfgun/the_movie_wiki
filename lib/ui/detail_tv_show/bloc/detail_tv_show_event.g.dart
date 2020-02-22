// GENERATED CODE - DO NOT MODIFY BY HAND

part of detail_tv_show_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DetailTvShowEventInitiated extends DetailTvShowEventInitiated {
  @override
  final int id;

  factory _$DetailTvShowEventInitiated(
          [void Function(DetailTvShowEventInitiatedBuilder) updates]) =>
      (new DetailTvShowEventInitiatedBuilder()..update(updates)).build();

  _$DetailTvShowEventInitiated._({this.id}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('DetailTvShowEventInitiated', 'id');
    }
  }

  @override
  DetailTvShowEventInitiated rebuild(
          void Function(DetailTvShowEventInitiatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetailTvShowEventInitiatedBuilder toBuilder() =>
      new DetailTvShowEventInitiatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetailTvShowEventInitiated && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DetailTvShowEventInitiated')
          ..add('id', id))
        .toString();
  }
}

class DetailTvShowEventInitiatedBuilder
    implements
        Builder<DetailTvShowEventInitiated, DetailTvShowEventInitiatedBuilder> {
  _$DetailTvShowEventInitiated _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  DetailTvShowEventInitiatedBuilder();

  DetailTvShowEventInitiatedBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetailTvShowEventInitiated other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DetailTvShowEventInitiated;
  }

  @override
  void update(void Function(DetailTvShowEventInitiatedBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DetailTvShowEventInitiated build() {
    final _$result = _$v ?? new _$DetailTvShowEventInitiated._(id: id);
    replace(_$result);
    return _$result;
  }
}

class _$DetailTvShowEventAddFavorite extends DetailTvShowEventAddFavorite {
  @override
  final int tvShowId;
  @override
  final String name;
  @override
  final String posterPath;
  @override
  final double voteAverage;

  factory _$DetailTvShowEventAddFavorite(
          [void Function(DetailTvShowEventAddFavoriteBuilder) updates]) =>
      (new DetailTvShowEventAddFavoriteBuilder()..update(updates)).build();

  _$DetailTvShowEventAddFavorite._(
      {this.tvShowId, this.name, this.posterPath, this.voteAverage})
      : super._() {
    if (tvShowId == null) {
      throw new BuiltValueNullFieldError(
          'DetailTvShowEventAddFavorite', 'tvShowId');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError(
          'DetailTvShowEventAddFavorite', 'name');
    }
    if (posterPath == null) {
      throw new BuiltValueNullFieldError(
          'DetailTvShowEventAddFavorite', 'posterPath');
    }
    if (voteAverage == null) {
      throw new BuiltValueNullFieldError(
          'DetailTvShowEventAddFavorite', 'voteAverage');
    }
  }

  @override
  DetailTvShowEventAddFavorite rebuild(
          void Function(DetailTvShowEventAddFavoriteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetailTvShowEventAddFavoriteBuilder toBuilder() =>
      new DetailTvShowEventAddFavoriteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetailTvShowEventAddFavorite &&
        tvShowId == other.tvShowId &&
        name == other.name &&
        posterPath == other.posterPath &&
        voteAverage == other.voteAverage;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, tvShowId.hashCode), name.hashCode), posterPath.hashCode),
        voteAverage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DetailTvShowEventAddFavorite')
          ..add('tvShowId', tvShowId)
          ..add('name', name)
          ..add('posterPath', posterPath)
          ..add('voteAverage', voteAverage))
        .toString();
  }
}

class DetailTvShowEventAddFavoriteBuilder
    implements
        Builder<DetailTvShowEventAddFavorite,
            DetailTvShowEventAddFavoriteBuilder> {
  _$DetailTvShowEventAddFavorite _$v;

  int _tvShowId;
  int get tvShowId => _$this._tvShowId;
  set tvShowId(int tvShowId) => _$this._tvShowId = tvShowId;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _posterPath;
  String get posterPath => _$this._posterPath;
  set posterPath(String posterPath) => _$this._posterPath = posterPath;

  double _voteAverage;
  double get voteAverage => _$this._voteAverage;
  set voteAverage(double voteAverage) => _$this._voteAverage = voteAverage;

  DetailTvShowEventAddFavoriteBuilder();

  DetailTvShowEventAddFavoriteBuilder get _$this {
    if (_$v != null) {
      _tvShowId = _$v.tvShowId;
      _name = _$v.name;
      _posterPath = _$v.posterPath;
      _voteAverage = _$v.voteAverage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetailTvShowEventAddFavorite other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DetailTvShowEventAddFavorite;
  }

  @override
  void update(void Function(DetailTvShowEventAddFavoriteBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DetailTvShowEventAddFavorite build() {
    final _$result = _$v ??
        new _$DetailTvShowEventAddFavorite._(
            tvShowId: tvShowId,
            name: name,
            posterPath: posterPath,
            voteAverage: voteAverage);
    replace(_$result);
    return _$result;
  }
}

class _$DetailTvShowEventRemoveFavorite
    extends DetailTvShowEventRemoveFavorite {
  @override
  final int tvShowId;

  factory _$DetailTvShowEventRemoveFavorite(
          [void Function(DetailTvShowEventRemoveFavoriteBuilder) updates]) =>
      (new DetailTvShowEventRemoveFavoriteBuilder()..update(updates)).build();

  _$DetailTvShowEventRemoveFavorite._({this.tvShowId}) : super._() {
    if (tvShowId == null) {
      throw new BuiltValueNullFieldError(
          'DetailTvShowEventRemoveFavorite', 'tvShowId');
    }
  }

  @override
  DetailTvShowEventRemoveFavorite rebuild(
          void Function(DetailTvShowEventRemoveFavoriteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetailTvShowEventRemoveFavoriteBuilder toBuilder() =>
      new DetailTvShowEventRemoveFavoriteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetailTvShowEventRemoveFavorite &&
        tvShowId == other.tvShowId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, tvShowId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DetailTvShowEventRemoveFavorite')
          ..add('tvShowId', tvShowId))
        .toString();
  }
}

class DetailTvShowEventRemoveFavoriteBuilder
    implements
        Builder<DetailTvShowEventRemoveFavorite,
            DetailTvShowEventRemoveFavoriteBuilder> {
  _$DetailTvShowEventRemoveFavorite _$v;

  int _tvShowId;
  int get tvShowId => _$this._tvShowId;
  set tvShowId(int tvShowId) => _$this._tvShowId = tvShowId;

  DetailTvShowEventRemoveFavoriteBuilder();

  DetailTvShowEventRemoveFavoriteBuilder get _$this {
    if (_$v != null) {
      _tvShowId = _$v.tvShowId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetailTvShowEventRemoveFavorite other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DetailTvShowEventRemoveFavorite;
  }

  @override
  void update(void Function(DetailTvShowEventRemoveFavoriteBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DetailTvShowEventRemoveFavorite build() {
    final _$result =
        _$v ?? new _$DetailTvShowEventRemoveFavorite._(tvShowId: tvShowId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
