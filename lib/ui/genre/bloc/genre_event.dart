library genre_event;

import 'package:built_value/built_value.dart';

part 'genre_event.g.dart';

abstract class GenreEvent {}

abstract class GenreEventInitiated extends GenreEvent
    implements Built<GenreEventInitiated, GenreEventInitiatedBuilder> {
  String get genreType;

  GenreEventInitiated._();

  factory GenreEventInitiated([updates(GenreEventInitiatedBuilder b)]) =
      _$GenreEventInitiated;
}
