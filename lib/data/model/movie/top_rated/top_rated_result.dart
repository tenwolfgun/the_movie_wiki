library top_;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/model/common/result.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'top_rated_result.g.dart';

abstract class TopRatedResult
    implements Built<TopRatedResult, TopRatedResultBuilder> {
  int get page;
  @BuiltValueField(wireName: 'total_pages')
  int get totalPages;
  BuiltList<Result> get results;

  TopRatedResult._();

  factory TopRatedResult([updates(TopRatedResultBuilder b)]) = _$TopRatedResult;

  String toJson() {
    return json
        .encode(serializers.serializeWith(TopRatedResult.serializer, this));
  }

  static TopRatedResult fromJson(String jsonString) {
    return serializers.deserializeWith(
        TopRatedResult.serializer, json.decode(jsonString));
  }

  static Serializer<TopRatedResult> get serializer =>
      _$topRatedResultSerializer;
}
