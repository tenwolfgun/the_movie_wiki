library reviews;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/model/common/review_result.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'reviews.g.dart';

abstract class Reviews implements Built<Reviews, ReviewsBuilder> {
  @nullable
  BuiltList<ReviewResult> get results;

  Reviews._();

  factory Reviews([updates(ReviewsBuilder b)]) = _$Reviews;

  String toJson() {
    return json.encode(serializers.serializeWith(Reviews.serializer, this));
  }

  static Reviews fromJson(String jsonString) {
    return serializers.deserializeWith(
        Reviews.serializer, json.decode(jsonString));
  }

  static Serializer<Reviews> get serializer => _$reviewsSerializer;
}
