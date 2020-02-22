library popular_result;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/model/common/result.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'popular_result.g.dart';

abstract class PopularResult
    implements Built<PopularResult, PopularResultBuilder> {
  int get page;
  @BuiltValueField(wireName: 'total_pages')
  int get totalPages;
  BuiltList<Result> get results;

  PopularResult._();

  factory PopularResult([updates(PopularResultBuilder b)]) = _$PopularResult;

  String toJson() {
    return json
        .encode(serializers.serializeWith(PopularResult.serializer, this));
  }

  static PopularResult fromJson(String jsonString) {
    return serializers.deserializeWith(
        PopularResult.serializer, json.decode(jsonString));
  }

  static Serializer<PopularResult> get serializer => _$popularResultSerializer;
}
