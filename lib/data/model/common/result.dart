library result;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'result.g.dart';

abstract class Result implements Built<Result, ResultBuilder> {
  @nullable
  double get popularity;
  @nullable
  int get id;
  @nullable
  @BuiltValueField(wireName: 'poster_path')
  String get posterPath;
  @nullable
  @BuiltValueField(wireName: 'backdrop_path')
  String get backdropPath;
  @nullable
  String get title;
  @nullable
  @BuiltValueField(wireName: 'vote_average')
  double get voteAverage;
  @nullable
  String get overview;
  @nullable
  @BuiltValueField(wireName: 'release_date')
  String get releaseDate;

  Result._();

  factory Result([updates(ResultBuilder b)]) = _$Result;

  String toJson() {
    return json.encode(serializers.serializeWith(Result.serializer, this));
  }

  static Result fromJson(String jsonString) {
    return serializers.deserializeWith(
        Result.serializer, json.decode(jsonString));
  }

  static Serializer<Result> get serializer => _$resultSerializer;
}
