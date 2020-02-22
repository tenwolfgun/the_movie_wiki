library release_dates;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/model/movie/detail/release_dates_result.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'release_dates.g.dart';

abstract class ReleaseDates
    implements Built<ReleaseDates, ReleaseDatesBuilder> {
  @nullable
  BuiltList<ReleaseDatesResult> get results;

  ReleaseDates._();

  factory ReleaseDates([updates(ReleaseDatesBuilder b)]) = _$ReleaseDates;

  String toJson() {
    return json
        .encode(serializers.serializeWith(ReleaseDates.serializer, this));
  }

  static ReleaseDates fromJson(String jsonString) {
    return serializers.deserializeWith(
        ReleaseDates.serializer, json.decode(jsonString));
  }

  static Serializer<ReleaseDates> get serializer => _$releaseDatesSerializer;
}
