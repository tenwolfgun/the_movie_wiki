import 'package:bloc/bloc.dart';
import 'package:the_movie_wiki/data/repository/movie_repository.dart';
import 'package:the_movie_wiki/ui/top_rated_movies/bloc/top_rated_movies_event.dart';
import 'package:the_movie_wiki/ui/top_rated_movies/bloc/top_rated_movies_state.dart';
import 'package:the_movie_wiki/data/model/common/result_error.dart';

class TopRatedMoviesBloc
    extends Bloc<TopRatedMoviesEvent, TopRatedMoviesState> {
  final MovieRepository _movieRepository;

  TopRatedMoviesBloc(this._movieRepository);

  void onTopRatedMovieInitiated(int page) {
    add(TopRatedMoviesInitiated((b) => b..page = page));
  }

  void onTopRatedMovieNextResult(int page) {
    add(TopRatedMoviesNextResult((b) => b..page = page));
  }

  @override
  TopRatedMoviesState get initialState => TopRatedMoviesState.initial();

  @override
  Stream<TopRatedMoviesState> mapEventToState(
    TopRatedMoviesEvent event,
  ) async* {
    if (event is TopRatedMoviesInitiated) {
      yield* mapPopularInitiated(event);
    } else if (event is TopRatedMoviesNextResult) {
      yield* mapNextResult(event);
    }
  }

  Stream<TopRatedMoviesState> mapPopularInitiated(
      TopRatedMoviesInitiated event) async* {
    yield TopRatedMoviesState.loading();
    try {
      final _topRatedMoviesResult =
          await _movieRepository.topRatedMovies(event.page);
      yield TopRatedMoviesState.success(_topRatedMoviesResult);
    } on ResultError catch (e) {
      yield TopRatedMoviesState.error(e.message);
    } on NoResultException catch (_) {
      yield TopRatedMoviesState.error(
          'Unable to procces your request, please check your network connection.');
    }
  }

  Stream<TopRatedMoviesState> mapNextResult(
      TopRatedMoviesNextResult event) async* {
    try {
      final _topRatedMoviesResult =
          await _movieRepository.topRatedMovies(event.page);
      yield TopRatedMoviesState.success(
          state.getResults + _topRatedMoviesResult);
    } on EndOfResultException catch (_) {
      yield state.rebuild((b) => b..endOfResult = true);
    }
  }
}
