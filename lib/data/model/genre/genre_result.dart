library genre_result;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

import 'genre.dart';

part 'genre_result.g.dart';

abstract class GenreResult implements Built<GenreResult, GenreResultBuilder> {
  BuiltList<Genre> get genres;

  GenreResult._();

  factory GenreResult([updates(GenreResultBuilder b)]) = _$GenreResult;

  String toJson() {
    return json.encode(serializers.serializeWith(GenreResult.serializer, this));
  }

  static GenreResult fromJson(String jsonString) {
    return serializers.deserializeWith(
        GenreResult.serializer, json.decode(jsonString));
  }

  static Serializer<GenreResult> get serializer => _$genreResultSerializer;
}
