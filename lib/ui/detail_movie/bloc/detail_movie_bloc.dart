import 'package:bloc/bloc.dart';
import 'package:the_movie_wiki/data/repository/movie_repository.dart';
import 'package:the_movie_wiki/ui/detail_movie/bloc/detail_movie_event.dart';
import 'package:the_movie_wiki/ui/detail_movie/bloc/detail_movie_state.dart';
import 'package:the_movie_wiki/data/model/common/result_error.dart';

class DetailMovieBloc extends Bloc<DetailMovieEvent, DetailMovieState> {
  final MovieRepository _movieRepository;

  DetailMovieBloc(this._movieRepository) : super();

  void onMovieDetailInitiated(int id) {
    add(DetailMovieEventInitiated((b) => b..id = id));
  }

  void onAddFavoriteMovie(
      {int movieId, String title, String posterPath, double voteAverage}) {
    add(
      DetailMovieEventAddFavorite(
        (b) => b
          ..movieId = movieId
          ..title = title
          ..posterPath = posterPath
          ..voteAverage = voteAverage,
      ),
    );
  }

  void onRemoveFavoriteMovie(int movieId) {
    add(
      DetailMovieEventRemoveFavorite(
        (b) => b..movieId = movieId,
      ),
    );
  }

  @override
  DetailMovieState get initialState => DetailMovieState.initial();

  @override
  Stream<DetailMovieState> mapEventToState(
    DetailMovieEvent event,
  ) async* {
    if (event is DetailMovieEventInitiated) {
      yield* _movieDetail(event);
    } else if (event is DetailMovieEventAddFavorite) {
      yield* _addFavoriteMovies(event);
    } else if (event is DetailMovieEventRemoveFavorite) {
      yield* _deleteFavoriteMovies(event);
    }
  }

  Stream<DetailMovieState> _movieDetail(
      DetailMovieEventInitiated event) async* {
    yield DetailMovieState.loading();
    try {
      final _detailResult = await _movieRepository.movieDetail(event.id);
      final _bookmarkedMovie =
          await _movieRepository.getSingleMovie(_detailResult.id.toInt());
      print(_bookmarkedMovie);
      yield DetailMovieState.success(_detailResult, _bookmarkedMovie);
    } on ResultError catch (e) {
      yield DetailMovieState.error(e.message);
    }
  }

  Stream<DetailMovieState> _addFavoriteMovies(
      DetailMovieEventAddFavorite event) async* {
    try {
      _movieRepository.insertMovie(
        movieId: event.movieId,
        title: event.title,
        posterPath: event.posterPath,
        voteAverage: event.voteAverage,
      );
      final _bookmarkedMovie =
          await _movieRepository.getSingleMovie(event.movieId);
      yield DetailMovieState.success(state.result, _bookmarkedMovie);
    } catch (e) {
      // yield DetailMovieState.error(e.message);
      print(e.message);
    }
  }

  Stream<DetailMovieState> _deleteFavoriteMovies(
      DetailMovieEventRemoveFavorite event) async* {
    try {
      _movieRepository.deleteMovie(event.movieId);
      final _isFavorite = await _movieRepository.getSingleMovie(event.movieId);
      yield DetailMovieState.success(state.result, _isFavorite);
    } catch (e) {
      // yield DetailMovieState.error(e.message);
      print(e.message);
    }
  }
}
