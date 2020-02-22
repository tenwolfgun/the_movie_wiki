library review_result;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'review_result.g.dart';

abstract class ReviewResult
    implements Built<ReviewResult, ReviewResultBuilder> {
  @nullable
  String get author;
  @nullable
  String get content;
  @nullable
  String get url;

  ReviewResult._();

  factory ReviewResult([updates(ReviewResultBuilder b)]) = _$ReviewResult;

  String toJson() {
    return json
        .encode(serializers.serializeWith(ReviewResult.serializer, this));
  }

  static ReviewResult fromJson(String jsonString) {
    return serializers.deserializeWith(
        ReviewResult.serializer, json.decode(jsonString));
  }

  static Serializer<ReviewResult> get serializer => _$reviewResultSerializer;
}
