import 'package:equatable/equatable.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:the_movie_wiki/data/local/db/moor_database.dart';

abstract class FavoriteTvShowState extends Equatable {
  const FavoriteTvShowState();

  @override
  List<Object> get props => [];
}

class InitialFavoriteTvShowState extends FavoriteTvShowState {}

class LoadingFavoriteTvShowState extends FavoriteTvShowState {}

class LoadedFavoriteTvShowState extends FavoriteTvShowState {
  final List<FavoriteTvShow> favorteTvShow;

  const LoadedFavoriteTvShowState({@required this.favorteTvShow})
      : assert(favorteTvShow != null);

  @override
  List<Object> get props => [favorteTvShow];
}

class ErrorFavoriteTvShowState extends FavoriteTvShowState {}
