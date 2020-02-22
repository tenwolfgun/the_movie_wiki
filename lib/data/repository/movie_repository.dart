import 'package:built_collection/built_collection.dart';
import 'package:the_movie_wiki/data/model/common/people_result.dart';
import 'package:the_movie_wiki/data/model/common/tv_show_result.dart';
import 'package:the_movie_wiki/data/model/genre/genre.dart';
import 'package:the_movie_wiki/data/model/movie/detail/detail_movie_result.dart';
import 'package:the_movie_wiki/data/model/movie/popular/popular.dart';
import 'package:the_movie_wiki/data/model/tv_show/detail/detail_tv_result.dart';
import 'package:the_movie_wiki/data/network/movie_data_source.dart';
import 'package:the_movie_wiki/data/local/db/moor_database.dart';

class MovieRepository {
  MovieDataSource _movieDataSource;
  FavoriteDao _favoriteDao;

  MovieRepository(this._movieDataSource, this._favoriteDao);

  Future<List<FavoriteMovie>> getAllMovies() async {
    final _result = await _favoriteDao.getAllMovies();

    if (_result.length == 0) {
      throw NoResultException();
    }

    return _result;
  }

  Future<List<FavoriteTvShow>> getAllTvShows() async {
    final _result = await _favoriteDao.getAlltvShows();

    if (_result.length == 0) {
      throw NoResultException();
    }

    return _result;
  }

  Future insertMovie({
    int movieId,
    String title,
    String posterPath,
    double voteAverage,
  }) =>
      _favoriteDao.insertMovie(movieId, title, posterPath, voteAverage);

  Future insertTvShow({
    int tvShowId,
    String name,
    String posterPath,
    double voteAverage,
  }) =>
      _favoriteDao.insertTvShow(tvShowId, name, posterPath, voteAverage);

  Future deleteMovie(int movieId) => _favoriteDao.deleteMovie(movieId);

  Future deleteTvShow(int tvShowId) => _favoriteDao.deleteTvShow(tvShowId);

  Stream<List<FavoriteMovie>> watchAllMovie() => _favoriteDao.watchAllMovies();

  Future<int> getSingleMovie(int movieId) =>
      _favoriteDao.getSingleMovie(movieId);

  Future<int> getSingleTvShow(int tvShowId) =>
      _favoriteDao.getSingleTvShow(tvShowId);

  Future<BuiltList<Result>> popularMovies(int page) async {
    final result = await _movieDataSource.popularMovies(page: page);
    if (result == null) {
      throw NoResultException();
    }

    if (page > result.totalPages) {
      throw EndOfResultException();
    }
    return result.results;
  }

  Future<BuiltList<Result>> nowPlayingMovies(int page) async {
    final result = await _movieDataSource.nowPlayingMovies(page: page);
    if (result == null) {
      throw NoResultException();
    }

    if (page > result.totalPages) {
      throw EndOfResultException();
    }
    return result.results;
  }

  Future<BuiltList<TvShowResult>> popularTvShow(int page) async {
    final result = await _movieDataSource.popularTvShow(page: page);
    if (result == null) {
      throw NoResultException();
    }

    if (page > result.totalPages) {
      throw EndOfResultException();
    }

    return result.results;
  }

  Future<BuiltList<Genre>> genreList(String genreType) async {
    final result = await _movieDataSource.genreList(genreType: genreType);
    if (result == null) {
      throw NoResultException();
    }

    return result.genres;
  }

  Future<BuiltList<Result>> upcomingMovieList() async {
    final result = await _movieDataSource.upcomingMovies();
    if (result == null) {
      throw NoResultException();
    }

    return result.results;
  }

  Future<BuiltList<Result>> topRatedMovies(int page) async {
    final result = await _movieDataSource.topRatedMovies(page: page);
    if (result == null) {
      throw NoResultException();
    }

    if (page > result.totalPages) {
      throw EndOfResultException();
    }

    return result.results;
  }

  Future<BuiltList<TvShowResult>> onAir(int page) async {
    final result = await _movieDataSource.onAir(page: page);
    if (result == null) {
      throw NoResultException();
    }

    if (page > result.totalPages) {
      throw EndOfResultException();
    }

    return result.results;
  }

  Future<BuiltList<TvShowResult>> airingToday(int page) async {
    final result = await _movieDataSource.airingToday(page: page);
    if (result == null) {
      throw NoResultException();
    }

    if (page > result.totalPages) {
      throw EndOfResultException();
    }

    return result.results;
  }

  Future<BuiltList<TvShowResult>> topRatedTvShow(int page) async {
    final result = await _movieDataSource.topRatedTvShow(page: page);
    if (result == null) {
      throw NoResultException();
    }

    if (page > result.totalPages) {
      throw EndOfResultException();
    }

    return result.results;
  }

  Future<BuiltList<Result>> trendingMovies(int page, String time) async {
    final result =
        await _movieDataSource.trendingMovies(page: page, time: time);
    if (result == null) throw NoResultException();
    if (page > result.totalPages) throw EndOfResultException();

    return result.results;
  }

  Future<BuiltList<TvShowResult>> trendingTvShow(int page, String time) async {
    final result =
        await _movieDataSource.trendingTvShow(page: page, time: time);
    if (result == null) throw NoResultException();
    if (page > result.totalPages) throw EndOfResultException();

    return result.results;
  }

  Future<BuiltList<PeopleResult>> trendingPeople(int page, String time) async {
    final result =
        await _movieDataSource.trendingPeople(page: page, time: time);
    if (result == null) throw NoResultException();
    if (page > result.totalPages) throw EndOfResultException();

    print(result.results[0].profilePath);

    return result.results;
  }

  Future<DetailMovieResult> movieDetail(int id) async {
    final result = await _movieDataSource.movieDetail(id: id);
    if (result == null) throw NoResultException();

    return result;
  }

  Future<DetailTvResult> tvDetail(int id) async {
    final result = await _movieDataSource.tvDetail(id: id);
    if (result == null) throw NoResultException();

    return result;
  }

  Future<BuiltList<Result>> popularMoviesByGenre({
    String genreId,
    int page,
  }) async {
    final result = await _movieDataSource.popularMoviesByGenre(
      genreId: genreId,
      page: page,
    );
    if (result == null) {
      throw NoResultException();
    }

    if (page > result.totalPages) {
      throw EndOfResultException();
    }

    return result.results;
  }

  Future<BuiltList<TvShowResult>> popularTvShowByGenre({
    String genreId,
    int page,
  }) async {
    final result = await _movieDataSource.popularTvShowByGenre(
      genreId: genreId,
      page: page,
    );
    if (result == null) {
      throw NoResultException();
    }

    if (page > result.totalPages) {
      throw EndOfResultException();
    }

    return result.results;
  }

  Future<BuiltList<Result>> searchMovies(
    String searchQuery,
    int page,
  ) async {
    if (searchQuery.isEmpty) {
      throw NoQueryException;
    }

    final result = await _movieDataSource.searchMovies(
      searchQuery: searchQuery,
      page: page,
    );

    if (result == null) {
      throw NoResultException();
    }

    if (result.page > result.totalPages) {
      throw EndOfResultException();
    }

    return result.results;
  }

  Future<BuiltList<TvShowResult>> searchTvShow({
    String searchQuery,
    int page,
  }) async {
    final result = await _movieDataSource.searchTvShow(
      searchQuery: searchQuery,
      page: page,
    );
    if (result == null) {
      throw NoResultException();
    }

    if (page > result.totalPages) {
      throw EndOfResultException();
    }

    if (searchQuery.isEmpty) {
      throw NoQueryException;
    }

    return result.results;
  }
}

class EndOfResultException implements Exception {
  final message = 'No result found!';
}

class NoResultException implements Exception {
  final message = 'No result found!';
}

class NoQueryException implements Exception {
  final message = 'No result found!';
}
