library trending_tv_show_result;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/model/common/tv_show_result.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'trending_tv_show_result.g.dart';

abstract class TrendingTvShowResult
    implements Built<TrendingTvShowResult, TrendingTvShowResultBuilder> {
  int get page;
  @BuiltValueField(wireName: 'total_pages')
  int get totalPages;
  BuiltList<TvShowResult> get results;

  TrendingTvShowResult._();

  factory TrendingTvShowResult([updates(TrendingTvShowResultBuilder b)]) =
      _$TrendingTvShowResult;

  String toJson() {
    return json.encode(
        serializers.serializeWith(TrendingTvShowResult.serializer, this));
  }

  static TrendingTvShowResult fromJson(String jsonString) {
    return serializers.deserializeWith(
        TrendingTvShowResult.serializer, json.decode(jsonString));
  }

  static Serializer<TrendingTvShowResult> get serializer =>
      _$trendingTvShowResultSerializer;
}
