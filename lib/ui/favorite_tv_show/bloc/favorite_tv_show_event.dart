import 'package:equatable/equatable.dart';

abstract class FavoriteTvShowEvent extends Equatable {
  const FavoriteTvShowEvent();
}

class FavoriteTvShowEventInitiated extends FavoriteTvShowEvent {
  @override
  List<Object> get props => [];

  @override
  String toString() => 'FavoriteTvShowEventInitiated';
}
