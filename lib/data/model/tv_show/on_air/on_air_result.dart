library on_air_result;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/model/common/tv_show_result.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'on_air_result.g.dart';

abstract class OnAirResult implements Built<OnAirResult, OnAirResultBuilder> {
  int get page;
  @BuiltValueField(wireName: 'total_pages')
  int get totalPages;
  BuiltList<TvShowResult> get results;

  OnAirResult._();

  factory OnAirResult([updates(OnAirResultBuilder b)]) = _$OnAirResult;

  String toJson() {
    return json.encode(serializers.serializeWith(OnAirResult.serializer, this));
  }

  static OnAirResult fromJson(String jsonString) {
    return serializers.deserializeWith(
        OnAirResult.serializer, json.decode(jsonString));
  }

  static Serializer<OnAirResult> get serializer => _$onAirResultSerializer;
}
