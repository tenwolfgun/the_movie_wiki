library similar_movies;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/model/common/result.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'similar_movies.g.dart';

abstract class SimilarMovies
    implements Built<SimilarMovies, SimilarMoviesBuilder> {
  @nullable
  BuiltList<Result> get results;

  SimilarMovies._();

  factory SimilarMovies([updates(SimilarMoviesBuilder b)]) = _$SimilarMovies;

  String toJson() {
    return json
        .encode(serializers.serializeWith(SimilarMovies.serializer, this));
  }

  static SimilarMovies fromJson(String jsonString) {
    return serializers.deserializeWith(
        SimilarMovies.serializer, json.decode(jsonString));
  }

  static Serializer<SimilarMovies> get serializer => _$similarMoviesSerializer;
}
