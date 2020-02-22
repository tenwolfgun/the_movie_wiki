import 'package:bloc/bloc.dart';
import 'package:the_movie_wiki/data/repository/movie_repository.dart';
import 'package:the_movie_wiki/ui/popular_tv_show_by_genre/bloc/popular_tv_show_by_genre_event.dart';
import 'package:the_movie_wiki/ui/popular_tv_show_by_genre/bloc/popular_tv_show_by_genre_state.dart';
import 'package:the_movie_wiki/data/model/common/result_error.dart';

class PopularTvShowByGenreBloc
    extends Bloc<PopularTvShowByGenreEvent, PopularTvShowByGenreState> {
  final MovieRepository _movieRepository;

  PopularTvShowByGenreBloc(this._movieRepository) : super();

  void onPopularTvShowByGenreInitiated(String genreId, int page) {
    add(PopularTvShowByGenreEventInitiated(
        (b) => [b..genreId = genreId, b..page = page]));
  }

  void onPopularTvShowByGenreNextResult(String genreId, int page) {
    add(PopularTvShowByGenreEventNextResult(
        (b) => [b..genreId = genreId, b..page = page]));
  }

  @override
  PopularTvShowByGenreState get initialState =>
      PopularTvShowByGenreState.initial();

  @override
  Stream<PopularTvShowByGenreState> mapEventToState(
    PopularTvShowByGenreEvent event,
  ) async* {
    if (event is PopularTvShowByGenreEventInitiated) {
      yield* _popularTvShowByGenreInitiated(event);
    } else if (event is PopularTvShowByGenreEventNextResult) {
      yield* _popularTvShowByGenreNextResult(event);
    }
  }

  Stream<PopularTvShowByGenreState> _popularTvShowByGenreInitiated(
      PopularTvShowByGenreEventInitiated event) async* {
    yield PopularTvShowByGenreState.loading();
    try {
      final result = await _movieRepository.popularTvShowByGenre(
        genreId: event.genreId,
        page: event.page,
      );

      yield PopularTvShowByGenreState.success(result);
    } on ResultError catch (e) {
      yield PopularTvShowByGenreState.error(e.message);
    } on NoResultException catch (e) {
      yield PopularTvShowByGenreState.error(e.message);
    }
  }

  Stream<PopularTvShowByGenreState> _popularTvShowByGenreNextResult(
      PopularTvShowByGenreEventNextResult event) async* {
    try {
      final _popularMovieResult = await _movieRepository.popularTvShowByGenre(
        genreId: event.genreId,
        page: event.page,
      );
      yield PopularTvShowByGenreState.success(
          state.getResults + _popularMovieResult);
    } on EndOfResultException catch (_) {
      yield state.rebuild((b) => b..endOfResult = true);
    } on NoResultException catch (e) {
      yield PopularTvShowByGenreState.error(e.message);
    } on ResultError catch (e) {
      yield PopularTvShowByGenreState.error(e.message);
    }
  }
}
