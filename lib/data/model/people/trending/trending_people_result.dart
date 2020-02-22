library trending_people_result;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/model/common/people_result.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'trending_people_result.g.dart';

abstract class TrendingPeopleResult
    implements Built<TrendingPeopleResult, TrendingPeopleResultBuilder> {
  int get page;
  @BuiltValueField(wireName: 'total_pages')
  int get totalPages;
  BuiltList<PeopleResult> get results;

  TrendingPeopleResult._();

  factory TrendingPeopleResult([updates(TrendingPeopleResultBuilder b)]) =
      _$TrendingPeopleResult;

  String toJson() {
    return json.encode(
        serializers.serializeWith(TrendingPeopleResult.serializer, this));
  }

  static TrendingPeopleResult fromJson(String jsonString) {
    return serializers.deserializeWith(
        TrendingPeopleResult.serializer, json.decode(jsonString));
  }

  static Serializer<TrendingPeopleResult> get serializer =>
      _$trendingPeopleResultSerializer;
}
