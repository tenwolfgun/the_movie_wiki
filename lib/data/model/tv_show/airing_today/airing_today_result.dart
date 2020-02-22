library airing_today_result;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/model/common/tv_show_result.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'airing_today_result.g.dart';

abstract class AiringTodayResult
    implements Built<AiringTodayResult, AiringTodayResultBuilder> {
  int get page;
  @BuiltValueField(wireName: 'total_pages')
  int get totalPages;
  BuiltList<TvShowResult> get results;

  AiringTodayResult._();

  factory AiringTodayResult([updates(AiringTodayResultBuilder b)]) =
      _$AiringTodayResult;

  String toJson() {
    return json
        .encode(serializers.serializeWith(AiringTodayResult.serializer, this));
  }

  static AiringTodayResult fromJson(String jsonString) {
    return serializers.deserializeWith(
        AiringTodayResult.serializer, json.decode(jsonString));
  }

  static Serializer<AiringTodayResult> get serializer =>
      _$airingTodayResultSerializer;
}
