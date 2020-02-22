import 'package:bloc/bloc.dart';
import 'package:the_movie_wiki/data/repository/movie_repository.dart';
import 'package:the_movie_wiki/ui/popular_movie_by_genre/bloc/popular_movie_by_genre_event.dart';
import 'package:the_movie_wiki/ui/popular_movie_by_genre/bloc/popular_movie_by_genre_state.dart';
import 'package:the_movie_wiki/data/model/common/result_error.dart';

class PopularMovieByGenreBloc
    extends Bloc<PopularMovieByGenreEvent, PopularMovieByGenreState> {
  final MovieRepository _movieRepository;

  PopularMovieByGenreBloc(this._movieRepository) : super();

  void onPopularMovieByGenreInitiated(String genreId, int page) {
    add(PopularMovieByGenreEventInitiated(
        (b) => [b..genreId = genreId, b..page = page]));
  }

  void onPopularMovieByGenreNextResult(String genreId, int page) {
    add(PopularMovieByGenreEventNextResult(
        (b) => [b..genreId = genreId, b..page = page]));
  }

  @override
  PopularMovieByGenreState get initialState =>
      PopularMovieByGenreState.initial();

  @override
  Stream<PopularMovieByGenreState> mapEventToState(
    PopularMovieByGenreEvent event,
  ) async* {
    if (event is PopularMovieByGenreEventInitiated) {
      yield* _popularMovieByGenreInitiated(event);
    } else if (event is PopularMovieByGenreEventNextResult) {
      yield* _popularMovieByGenreNextResult(event);
    }
  }

  Stream<PopularMovieByGenreState> _popularMovieByGenreInitiated(
      PopularMovieByGenreEventInitiated event) async* {
    yield PopularMovieByGenreState.loading();

    try {
      final _popularMovieResult = await _movieRepository.popularMoviesByGenre(
        genreId: event.genreId,
        page: event.page,
      );
      yield PopularMovieByGenreState.success(_popularMovieResult);
    } on ResultError catch (e) {
      yield PopularMovieByGenreState.error(e.message);
    } on NoResultException catch (e) {
      yield PopularMovieByGenreState.error(e.message);
    }
  }

  Stream<PopularMovieByGenreState> _popularMovieByGenreNextResult(
      PopularMovieByGenreEventNextResult event) async* {
    try {
      final _popularMovieResult = await _movieRepository.popularMoviesByGenre(
        genreId: event.genreId,
        page: event.page,
      );
      yield PopularMovieByGenreState.success(
          state.getResults + _popularMovieResult);
    } on EndOfResultException catch (_) {
      yield state.rebuild((b) => b..endOfResult = true);
    } on NoResultException catch (e) {
      yield PopularMovieByGenreState.error(e.message);
    } on ResultError catch (e) {
      yield PopularMovieByGenreState.error(e.message);
    }
  }
}
