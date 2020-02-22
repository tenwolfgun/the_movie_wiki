library top_rated_result_tv_show;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/model/common/tv_show_result.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'top_rated_result_tv_show.g.dart';

abstract class TopRatedResultTvShow
    implements Built<TopRatedResultTvShow, TopRatedResultTvShowBuilder> {
  int get page;
  @BuiltValueField(wireName: 'total_pages')
  int get totalPages;
  BuiltList<TvShowResult> get results;

  TopRatedResultTvShow._();

  factory TopRatedResultTvShow([updates(TopRatedResultTvShowBuilder b)]) =
      _$TopRatedResultTvShow;

  String toJson() {
    return json.encode(
        serializers.serializeWith(TopRatedResultTvShow.serializer, this));
  }

  static TopRatedResultTvShow fromJson(String jsonString) {
    return serializers.deserializeWith(
        TopRatedResultTvShow.serializer, json.decode(jsonString));
  }

  static Serializer<TopRatedResultTvShow> get serializer =>
      _$topRatedResultTvShowSerializer;
}
