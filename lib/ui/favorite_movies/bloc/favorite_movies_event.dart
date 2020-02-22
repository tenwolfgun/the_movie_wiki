import 'package:equatable/equatable.dart';

abstract class FavoriteMoviesEvent extends Equatable {
  const FavoriteMoviesEvent();
}

class FavoriteMoviesEventInitiated extends FavoriteMoviesEvent {
  @override
  List<Object> get props => [];

  @override
  String toString() => 'FavoriteMoviesEventInitiated';
}
