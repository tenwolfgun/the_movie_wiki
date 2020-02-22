// GENERATED CODE - DO NOT MODIFY BY HAND

part of moor_database;

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class FavoriteMovie extends DataClass implements Insertable<FavoriteMovie> {
  final int id;
  final String title;
  final String posterPath;
  final double voteAverage;
  FavoriteMovie(
      {@required this.id,
      @required this.title,
      @required this.posterPath,
      @required this.voteAverage});
  factory FavoriteMovie.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final doubleType = db.typeSystem.forDartType<double>();
    return FavoriteMovie(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
      posterPath: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}poster_path']),
      voteAverage: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}vote_average']),
    );
  }
  factory FavoriteMovie.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return FavoriteMovie(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      posterPath: serializer.fromJson<String>(json['posterPath']),
      voteAverage: serializer.fromJson<double>(json['voteAverage']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'posterPath': serializer.toJson<String>(posterPath),
      'voteAverage': serializer.toJson<double>(voteAverage),
    };
  }

  @override
  FavoriteMoviesCompanion createCompanion(bool nullToAbsent) {
    return FavoriteMoviesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      posterPath: posterPath == null && nullToAbsent
          ? const Value.absent()
          : Value(posterPath),
      voteAverage: voteAverage == null && nullToAbsent
          ? const Value.absent()
          : Value(voteAverage),
    );
  }

  FavoriteMovie copyWith(
          {int id, String title, String posterPath, double voteAverage}) =>
      FavoriteMovie(
        id: id ?? this.id,
        title: title ?? this.title,
        posterPath: posterPath ?? this.posterPath,
        voteAverage: voteAverage ?? this.voteAverage,
      );
  @override
  String toString() {
    return (StringBuffer('FavoriteMovie(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('posterPath: $posterPath, ')
          ..write('voteAverage: $voteAverage')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode,
      $mrjc(title.hashCode, $mrjc(posterPath.hashCode, voteAverage.hashCode))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is FavoriteMovie &&
          other.id == this.id &&
          other.title == this.title &&
          other.posterPath == this.posterPath &&
          other.voteAverage == this.voteAverage);
}

class FavoriteMoviesCompanion extends UpdateCompanion<FavoriteMovie> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> posterPath;
  final Value<double> voteAverage;
  const FavoriteMoviesCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.posterPath = const Value.absent(),
    this.voteAverage = const Value.absent(),
  });
  FavoriteMoviesCompanion.insert({
    @required int id,
    @required String title,
    @required String posterPath,
    @required double voteAverage,
  })  : id = Value(id),
        title = Value(title),
        posterPath = Value(posterPath),
        voteAverage = Value(voteAverage);
  FavoriteMoviesCompanion copyWith(
      {Value<int> id,
      Value<String> title,
      Value<String> posterPath,
      Value<double> voteAverage}) {
    return FavoriteMoviesCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      posterPath: posterPath ?? this.posterPath,
      voteAverage: voteAverage ?? this.voteAverage,
    );
  }
}

class $FavoriteMoviesTable extends FavoriteMovies
    with TableInfo<$FavoriteMoviesTable, FavoriteMovie> {
  final GeneratedDatabase _db;
  final String _alias;
  $FavoriteMoviesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn('title', $tableName, false,
        minTextLength: 1, maxTextLength: 255);
  }

  final VerificationMeta _posterPathMeta = const VerificationMeta('posterPath');
  GeneratedTextColumn _posterPath;
  @override
  GeneratedTextColumn get posterPath => _posterPath ??= _constructPosterPath();
  GeneratedTextColumn _constructPosterPath() {
    return GeneratedTextColumn('poster_path', $tableName, false,
        minTextLength: 1, maxTextLength: 255);
  }

  final VerificationMeta _voteAverageMeta =
      const VerificationMeta('voteAverage');
  GeneratedRealColumn _voteAverage;
  @override
  GeneratedRealColumn get voteAverage =>
      _voteAverage ??= _constructVoteAverage();
  GeneratedRealColumn _constructVoteAverage() {
    return GeneratedRealColumn(
      'vote_average',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, title, posterPath, voteAverage];
  @override
  $FavoriteMoviesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'favorite_movies';
  @override
  final String actualTableName = 'favorite_movies';
  @override
  VerificationContext validateIntegrity(FavoriteMoviesCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (id.isRequired && isInserting) {
      context.missing(_idMeta);
    }
    if (d.title.present) {
      context.handle(
          _titleMeta, title.isAcceptableValue(d.title.value, _titleMeta));
    } else if (title.isRequired && isInserting) {
      context.missing(_titleMeta);
    }
    if (d.posterPath.present) {
      context.handle(_posterPathMeta,
          posterPath.isAcceptableValue(d.posterPath.value, _posterPathMeta));
    } else if (posterPath.isRequired && isInserting) {
      context.missing(_posterPathMeta);
    }
    if (d.voteAverage.present) {
      context.handle(_voteAverageMeta,
          voteAverage.isAcceptableValue(d.voteAverage.value, _voteAverageMeta));
    } else if (voteAverage.isRequired && isInserting) {
      context.missing(_voteAverageMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FavoriteMovie map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return FavoriteMovie.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(FavoriteMoviesCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.title.present) {
      map['title'] = Variable<String, StringType>(d.title.value);
    }
    if (d.posterPath.present) {
      map['poster_path'] = Variable<String, StringType>(d.posterPath.value);
    }
    if (d.voteAverage.present) {
      map['vote_average'] = Variable<double, RealType>(d.voteAverage.value);
    }
    return map;
  }

  @override
  $FavoriteMoviesTable createAlias(String alias) {
    return $FavoriteMoviesTable(_db, alias);
  }
}

class FavoriteTvShow extends DataClass implements Insertable<FavoriteTvShow> {
  final int id;
  final String name;
  final String posterPath;
  final double voteAverage;
  FavoriteTvShow(
      {@required this.id,
      @required this.name,
      @required this.posterPath,
      @required this.voteAverage});
  factory FavoriteTvShow.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final doubleType = db.typeSystem.forDartType<double>();
    return FavoriteTvShow(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      posterPath: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}poster_path']),
      voteAverage: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}vote_average']),
    );
  }
  factory FavoriteTvShow.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return FavoriteTvShow(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      posterPath: serializer.fromJson<String>(json['posterPath']),
      voteAverage: serializer.fromJson<double>(json['voteAverage']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'posterPath': serializer.toJson<String>(posterPath),
      'voteAverage': serializer.toJson<double>(voteAverage),
    };
  }

  @override
  FavoriteTvShowsCompanion createCompanion(bool nullToAbsent) {
    return FavoriteTvShowsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      posterPath: posterPath == null && nullToAbsent
          ? const Value.absent()
          : Value(posterPath),
      voteAverage: voteAverage == null && nullToAbsent
          ? const Value.absent()
          : Value(voteAverage),
    );
  }

  FavoriteTvShow copyWith(
          {int id, String name, String posterPath, double voteAverage}) =>
      FavoriteTvShow(
        id: id ?? this.id,
        name: name ?? this.name,
        posterPath: posterPath ?? this.posterPath,
        voteAverage: voteAverage ?? this.voteAverage,
      );
  @override
  String toString() {
    return (StringBuffer('FavoriteTvShow(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('posterPath: $posterPath, ')
          ..write('voteAverage: $voteAverage')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode,
      $mrjc(name.hashCode, $mrjc(posterPath.hashCode, voteAverage.hashCode))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is FavoriteTvShow &&
          other.id == this.id &&
          other.name == this.name &&
          other.posterPath == this.posterPath &&
          other.voteAverage == this.voteAverage);
}

class FavoriteTvShowsCompanion extends UpdateCompanion<FavoriteTvShow> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> posterPath;
  final Value<double> voteAverage;
  const FavoriteTvShowsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.posterPath = const Value.absent(),
    this.voteAverage = const Value.absent(),
  });
  FavoriteTvShowsCompanion.insert({
    @required int id,
    @required String name,
    @required String posterPath,
    @required double voteAverage,
  })  : id = Value(id),
        name = Value(name),
        posterPath = Value(posterPath),
        voteAverage = Value(voteAverage);
  FavoriteTvShowsCompanion copyWith(
      {Value<int> id,
      Value<String> name,
      Value<String> posterPath,
      Value<double> voteAverage}) {
    return FavoriteTvShowsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      posterPath: posterPath ?? this.posterPath,
      voteAverage: voteAverage ?? this.voteAverage,
    );
  }
}

class $FavoriteTvShowsTable extends FavoriteTvShows
    with TableInfo<$FavoriteTvShowsTable, FavoriteTvShow> {
  final GeneratedDatabase _db;
  final String _alias;
  $FavoriteTvShowsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 1, maxTextLength: 255);
  }

  final VerificationMeta _posterPathMeta = const VerificationMeta('posterPath');
  GeneratedTextColumn _posterPath;
  @override
  GeneratedTextColumn get posterPath => _posterPath ??= _constructPosterPath();
  GeneratedTextColumn _constructPosterPath() {
    return GeneratedTextColumn('poster_path', $tableName, false,
        minTextLength: 1, maxTextLength: 255);
  }

  final VerificationMeta _voteAverageMeta =
      const VerificationMeta('voteAverage');
  GeneratedRealColumn _voteAverage;
  @override
  GeneratedRealColumn get voteAverage =>
      _voteAverage ??= _constructVoteAverage();
  GeneratedRealColumn _constructVoteAverage() {
    return GeneratedRealColumn(
      'vote_average',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, name, posterPath, voteAverage];
  @override
  $FavoriteTvShowsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'favorite_tv_shows';
  @override
  final String actualTableName = 'favorite_tv_shows';
  @override
  VerificationContext validateIntegrity(FavoriteTvShowsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (id.isRequired && isInserting) {
      context.missing(_idMeta);
    }
    if (d.name.present) {
      context.handle(
          _nameMeta, name.isAcceptableValue(d.name.value, _nameMeta));
    } else if (name.isRequired && isInserting) {
      context.missing(_nameMeta);
    }
    if (d.posterPath.present) {
      context.handle(_posterPathMeta,
          posterPath.isAcceptableValue(d.posterPath.value, _posterPathMeta));
    } else if (posterPath.isRequired && isInserting) {
      context.missing(_posterPathMeta);
    }
    if (d.voteAverage.present) {
      context.handle(_voteAverageMeta,
          voteAverage.isAcceptableValue(d.voteAverage.value, _voteAverageMeta));
    } else if (voteAverage.isRequired && isInserting) {
      context.missing(_voteAverageMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FavoriteTvShow map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return FavoriteTvShow.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(FavoriteTvShowsCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.name.present) {
      map['name'] = Variable<String, StringType>(d.name.value);
    }
    if (d.posterPath.present) {
      map['poster_path'] = Variable<String, StringType>(d.posterPath.value);
    }
    if (d.voteAverage.present) {
      map['vote_average'] = Variable<double, RealType>(d.voteAverage.value);
    }
    return map;
  }

  @override
  $FavoriteTvShowsTable createAlias(String alias) {
    return $FavoriteTvShowsTable(_db, alias);
  }
}

abstract class _$MoorDatabase extends GeneratedDatabase {
  _$MoorDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $FavoriteMoviesTable _favoriteMovies;
  $FavoriteMoviesTable get favoriteMovies =>
      _favoriteMovies ??= $FavoriteMoviesTable(this);
  $FavoriteTvShowsTable _favoriteTvShows;
  $FavoriteTvShowsTable get favoriteTvShows =>
      _favoriteTvShows ??= $FavoriteTvShowsTable(this);
  FavoriteDao _favoriteDao;
  FavoriteDao get favoriteDao =>
      _favoriteDao ??= FavoriteDao(this as MoorDatabase);
  @override
  List<TableInfo> get allTables => [favoriteMovies, favoriteTvShows];
}

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$FavoriteDaoMixin on DatabaseAccessor<MoorDatabase> {
  $FavoriteMoviesTable get favoriteMovies => db.favoriteMovies;
  $FavoriteTvShowsTable get favoriteTvShows => db.favoriteTvShows;
  Future<int> insertMovie(int var1, String var2, String var3, double var4) {
    return customInsert(
      'insert into favorite_movies(id, title, poster_path, vote_average) values (?, ?, ?, ?)',
      variables: [
        Variable.withInt(var1),
        Variable.withString(var2),
        Variable.withString(var3),
        Variable.withReal(var4)
      ],
      updates: {favoriteMovies},
    );
  }

  Future<int> deleteMovie(int var1) {
    return customUpdate(
      'delete from favorite_movies where id = ?',
      variables: [Variable.withInt(var1)],
      updates: {favoriteMovies},
    );
  }

  Future<int> insertTvShow(int var1, String var2, String var3, double var4) {
    return customInsert(
      'insert into favorite_tv_shows(id, name, poster_path, vote_average) values(?, ?, ?, ?)',
      variables: [
        Variable.withInt(var1),
        Variable.withString(var2),
        Variable.withString(var3),
        Variable.withReal(var4)
      ],
      updates: {favoriteTvShows},
    );
  }

  Future<int> deleteTvShow(int var1) {
    return customUpdate(
      'delete from favorite_tv_shows where id = ?',
      variables: [Variable.withInt(var1)],
      updates: {favoriteTvShows},
    );
  }
}
