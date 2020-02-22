import 'package:equatable/equatable.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:the_movie_wiki/data/local/db/moor_database.dart';

abstract class FavoriteMoviesState extends Equatable {
  const FavoriteMoviesState();

  @override
  List<Object> get props => [];
}

class InitialFavoriteMoviesState extends FavoriteMoviesState {}

class LoadingFavoriteMoviesState extends FavoriteMoviesState {}

class LoadedFavoriteMoviesState extends FavoriteMoviesState {
  final List<FavoriteMovie> favoriteMovie;

  const LoadedFavoriteMoviesState({@required this.favoriteMovie})
      : assert(favoriteMovie != null);

  @override
  List<Object> get props => [favoriteMovie];
}

class ErrorFavoriteMoviesState extends FavoriteMoviesState {}
