library release_dates_result;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/model/movie/detail/release_dates_result_in_result.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'release_dates_result.g.dart';

abstract class ReleaseDatesResult
    implements Built<ReleaseDatesResult, ReleaseDatesResultBuilder> {
  @nullable
  @BuiltValueField(wireName: 'iso_3166_1')
  String get countryCode;
  @nullable
  @BuiltValueField(wireName: 'release_dates')
  BuiltList<ReleaseDatesResultInResult> get releaseDates;

  ReleaseDatesResult._();

  factory ReleaseDatesResult([updates(ReleaseDatesResultBuilder b)]) =
      _$ReleaseDatesResult;

  String toJson() {
    return json
        .encode(serializers.serializeWith(ReleaseDatesResult.serializer, this));
  }

  static ReleaseDatesResult fromJson(String jsonString) {
    return serializers.deserializeWith(
        ReleaseDatesResult.serializer, json.decode(jsonString));
  }

  static Serializer<ReleaseDatesResult> get serializer =>
      _$releaseDatesResultSerializer;
}
