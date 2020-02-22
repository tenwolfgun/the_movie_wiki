library genre;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'genre.g.dart';

abstract class Genre implements Built<Genre, GenreBuilder> {
  @nullable
  int get id;
  @nullable
  String get name;

  Genre._();

  factory Genre([updates(GenreBuilder b)]) = _$Genre;

  String toJson() {
    return json.encode(serializers.serializeWith(Genre.serializer, this));
  }

  static Genre fromJson(String jsonString) {
    return serializers.deserializeWith(
        Genre.serializer, json.decode(jsonString));
  }

  static Serializer<Genre> get serializer => _$genreSerializer;
}
