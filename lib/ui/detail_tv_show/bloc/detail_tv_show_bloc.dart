import 'package:bloc/bloc.dart';
import 'package:the_movie_wiki/data/repository/movie_repository.dart';
import 'package:the_movie_wiki/ui/detail_tv_show/bloc/detail_tv_show_event.dart';
import 'package:the_movie_wiki/ui/detail_tv_show/bloc/detail_tv_show_state.dart';
import 'package:the_movie_wiki/data/model/common/result_error.dart';

class DetailTvShowBloc extends Bloc<DetailTvShowEvent, DetailTvShowState> {
  final MovieRepository _movieRepository;

  DetailTvShowBloc(this._movieRepository) : super();

  void onTvShowDetailInitiated(int id) {
    add(DetailTvShowEventInitiated((b) => b..id = id));
  }

  void onAddFavoriteTvShow({
    int tvShowId,
    String name,
    String posterPath,
    double voteAverage,
  }) {
    add(
      DetailTvShowEventAddFavorite(
        (b) => b
          ..tvShowId = tvShowId
          ..name = name
          ..posterPath = posterPath
          ..voteAverage = voteAverage,
      ),
    );
  }

  void onRemoveFavoriteTvShow({int tvShowId}) {
    add(
      DetailTvShowEventRemoveFavorite(
        (b) => b..tvShowId = tvShowId,
      ),
    );
  }

  @override
  DetailTvShowState get initialState => DetailTvShowState.initial();

  @override
  Stream<DetailTvShowState> mapEventToState(
    DetailTvShowEvent event,
  ) async* {
    if (event is DetailTvShowEventInitiated) {
      yield* _tvDetail(event);
    } else if (event is DetailTvShowEventAddFavorite) {
      yield* _addFavoriteTvShows(event);
    } else if (event is DetailTvShowEventRemoveFavorite) {
      yield* _deleteFavoriteTvShows(event);
    }
  }

  Stream<DetailTvShowState> _tvDetail(DetailTvShowEventInitiated event) async* {
    try {
      yield DetailTvShowState.loading();
      final _detailResult = await _movieRepository.tvDetail(event.id);
      final _favoriteTvShow =
          await _movieRepository.getSingleTvShow(_detailResult.id.toInt());
      yield DetailTvShowState.success(_detailResult, _favoriteTvShow);
    } on ResultError catch (e) {
      yield DetailTvShowState.error(e.message);
    }
  }

  Stream<DetailTvShowState> _addFavoriteTvShows(
      DetailTvShowEventAddFavorite event) async* {
    try {
      _movieRepository.insertTvShow(
        tvShowId: event.tvShowId,
        name: event.name,
        posterPath: event.posterPath,
        voteAverage: event.voteAverage,
      );
      final _isFavorite =
          await _movieRepository.getSingleTvShow(event.tvShowId);
      yield DetailTvShowState.success(state.result, _isFavorite);
    } catch (e) {
      // yield DetailTvShowState.error(e.message);
      print(e.message);
    }
  }

  Stream<DetailTvShowState> _deleteFavoriteTvShows(
      DetailTvShowEventRemoveFavorite event) async* {
    try {
      _movieRepository.deleteTvShow(event.tvShowId);
      final _isFavorite =
          await _movieRepository.getSingleTvShow(event.tvShowId);
      yield DetailTvShowState.success(state.result, _isFavorite);
    } catch (e) {
      // yield DetailTvShowState.error(e.message);
      print(e.message);
    }
  }
}
