library trending_movie_result;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/model/common/result.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'trending_movie_result.g.dart';

abstract class TrendingMovieResult
    implements Built<TrendingMovieResult, TrendingMovieResultBuilder> {
  int get page;
  @BuiltValueField(wireName: 'total_pages')
  int get totalPages;
  BuiltList<Result> get results;

  TrendingMovieResult._();

  factory TrendingMovieResult([updates(TrendingMovieResultBuilder b)]) =
      _$TrendingMovieResult;

  String toJson() {
    return json.encode(
        serializers.serializeWith(TrendingMovieResult.serializer, this));
  }

  static TrendingMovieResult fromJson(String jsonString) {
    return serializers.deserializeWith(
        TrendingMovieResult.serializer, json.decode(jsonString));
  }

  static Serializer<TrendingMovieResult> get serializer =>
      _$trendingMovieResultSerializer;
}
