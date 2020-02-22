library popular_tv_show_result;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/model/common/tv_show_result.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'popular_tv_show_result.g.dart';

abstract class PopularTvShowResult
    implements Built<PopularTvShowResult, PopularTvShowResultBuilder> {
  int get page;
  @BuiltValueField(wireName: 'total_pages')
  int get totalPages;
  BuiltList<TvShowResult> get results;

  PopularTvShowResult._();

  factory PopularTvShowResult([updates(PopularTvShowResultBuilder b)]) =
      _$PopularTvShowResult;

  String toJson() {
    return json.encode(
        serializers.serializeWith(PopularTvShowResult.serializer, this));
  }

  static PopularTvShowResult fromJson(String jsonString) {
    return serializers.deserializeWith(
        PopularTvShowResult.serializer, json.decode(jsonString));
  }

  static Serializer<PopularTvShowResult> get serializer =>
      _$popularTvShowResultSerializer;
}
