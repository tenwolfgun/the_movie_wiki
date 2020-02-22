library release_dates_result_in_result;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'release_dates_result_in_result.g.dart';

abstract class ReleaseDatesResultInResult
    implements
        Built<ReleaseDatesResultInResult, ReleaseDatesResultInResultBuilder> {
  @nullable
  String get certification;
  @nullable
  @BuiltValueField(wireName: 'release_date')
  String get releaseDate;

  ReleaseDatesResultInResult._();

  factory ReleaseDatesResultInResult(
          [updates(ReleaseDatesResultInResultBuilder b)]) =
      _$ReleaseDatesResultInResult;

  String toJson() {
    return json.encode(
        serializers.serializeWith(ReleaseDatesResultInResult.serializer, this));
  }

  static ReleaseDatesResultInResult fromJson(String jsonString) {
    return serializers.deserializeWith(
        ReleaseDatesResultInResult.serializer, json.decode(jsonString));
  }

  static Serializer<ReleaseDatesResultInResult> get serializer =>
      _$releaseDatesResultInResultSerializer;
}
