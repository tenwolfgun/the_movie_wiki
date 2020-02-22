import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:the_movie_wiki/data/repository/movie_repository.dart';
import './bloc.dart';

class FavoriteMoviesBloc
    extends Bloc<FavoriteMoviesEvent, FavoriteMoviesState> {
  final MovieRepository _movieRepository;

  FavoriteMoviesBloc(this._movieRepository) : super();

  @override
  FavoriteMoviesState get initialState => InitialFavoriteMoviesState();

  @override
  Stream<FavoriteMoviesState> mapEventToState(
    FavoriteMoviesEvent event,
  ) async* {
    if (event is FavoriteMoviesEventInitiated) {
      yield* _mapInitial(event);
    }
  }

  Stream<FavoriteMoviesState> _mapInitial(
      FavoriteMoviesEventInitiated event) async* {
    yield LoadingFavoriteMoviesState();

    try {
      final _result = await _movieRepository.getAllMovies();
      yield LoadedFavoriteMoviesState(favoriteMovie: _result);
    } on NoResultException catch (_) {
      yield ErrorFavoriteMoviesState();
    } catch (_) {
      yield ErrorFavoriteMoviesState();
    }
  }
}
