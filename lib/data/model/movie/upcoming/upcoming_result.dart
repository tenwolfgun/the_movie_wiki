library upcoming_result;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/model/common/result.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'upcoming_result.g.dart';

abstract class UpcomingResult
    implements Built<UpcomingResult, UpcomingResultBuilder> {
  BuiltList<Result> get results;

  UpcomingResult._();

  factory UpcomingResult([updates(UpcomingResultBuilder b)]) = _$UpcomingResult;

  String toJson() {
    return json
        .encode(serializers.serializeWith(UpcomingResult.serializer, this));
  }

  static UpcomingResult fromJson(String jsonString) {
    return serializers.deserializeWith(
        UpcomingResult.serializer, json.decode(jsonString));
  }

  static Serializer<UpcomingResult> get serializer =>
      _$upcomingResultSerializer;
}
