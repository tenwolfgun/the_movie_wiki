library moor_database;

import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:the_movie_wiki/data/model/movie/favorite_movies/favorite_movies.dart';
import 'package:the_movie_wiki/data/model/tv_show/favorite_tv_show/favorite_tv_show.dart';

part 'moor_database.g.dart';

@UseMoor(tables: [
  FavoriteMovies,
  FavoriteTvShows,
], daos: [
  FavoriteDao,
])
class MoorDatabase extends _$MoorDatabase {
  MoorDatabase()
      : super((FlutterQueryExecutor.inDatabaseFolder(
          path: 'db.sqlite',
          logStatements: true,
        )));

  @override
  int get schemaVersion => 1;
}

@UseDao(tables: [
  FavoriteMovies,
  FavoriteTvShows,
], queries: {
  'insertMovie':
      'insert into favorite_movies(id, title, poster_path, vote_average) values (?, ?, ?, ?)',
  'deleteMovie': 'delete from favorite_movies where id = ?',
  'insertTvShow':
      'insert into favorite_tv_shows(id, name, poster_path, vote_average) values(?, ?, ?, ?)',
  'deleteTvShow': 'delete from favorite_tv_shows where id = ?'
})
class FavoriteDao extends DatabaseAccessor<MoorDatabase>
    with _$FavoriteDaoMixin {
  final MoorDatabase db;
  FavoriteDao(this.db) : super(db);

  Future<List<FavoriteMovie>> getAllMovies() {
    return (select(favoriteMovies)
          ..orderBy(
            [
              (t) => OrderingTerm(expression: t.id, mode: OrderingMode.desc),
            ],
          ))
        .get();
  }

  Future<List<FavoriteTvShow>> getAlltvShows() {
    return (select(favoriteTvShows)
          ..orderBy(
            [
              (t) => OrderingTerm(expression: t.id, mode: OrderingMode.desc),
            ],
          ))
        .get();
  }

  Stream<List<FavoriteMovie>> watchAllMovies() {
    return (select(favoriteMovies)
          ..orderBy(
            [
              (t) => OrderingTerm(expression: t.id, mode: OrderingMode.desc),
            ],
          ))
        .watch();
  }

  Selectable<int> getSingleMovieQuery(int var1) {
    return customSelectQuery(
            'select count(*) from favorite_movies where id = ? limit 1',
            variables: [Variable.withInt(var1)],
            readsFrom: {favoriteMovies})
        .map((QueryRow row) => row.readInt('count(*)'));
  }

  Future<int> getSingleMovie(int var1) {
    return getSingleMovieQuery(var1).getSingle();
  }

  Selectable<int> getSingleTvShowQuery(int var1) {
    return customSelectQuery(
            'select count(*) from favorite_tv_shows where id = ? limit 1',
            variables: [Variable.withInt(var1)],
            readsFrom: {favoriteTvShows})
        .map((QueryRow row) => row.readInt('count(*)'));
  }

  Future<int> getSingleTvShow(int var1) {
    return getSingleTvShowQuery(var1).getSingle();
  }
}
