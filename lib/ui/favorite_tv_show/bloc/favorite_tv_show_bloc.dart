import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:the_movie_wiki/data/repository/movie_repository.dart';

import './bloc.dart';

class FavoriteTvShowBloc
    extends Bloc<FavoriteTvShowEvent, FavoriteTvShowState> {
  final MovieRepository _movieRepository;

  FavoriteTvShowBloc(this._movieRepository) : super();

  @override
  FavoriteTvShowState get initialState => InitialFavoriteTvShowState();

  @override
  Stream<FavoriteTvShowState> mapEventToState(
    FavoriteTvShowEvent event,
  ) async* {
    if (event is FavoriteTvShowEventInitiated) {
      yield* _mapInitial(event);
    }
  }

  Stream<FavoriteTvShowState> _mapInitial(
      FavoriteTvShowEventInitiated event) async* {
    yield LoadingFavoriteTvShowState();

    try {
      final _result = await _movieRepository.getAllTvShows();
      yield LoadedFavoriteTvShowState(favorteTvShow: _result);
    } on NoResultException catch (_) {
      yield ErrorFavoriteTvShowState();
    } catch (_) {
      yield ErrorFavoriteTvShowState();
    }
  }
}
