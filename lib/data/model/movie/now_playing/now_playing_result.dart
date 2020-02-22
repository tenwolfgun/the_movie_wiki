library now_playing_result;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/model/common/result.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'now_playing_result.g.dart';

abstract class NowPlayingResult
    implements Built<NowPlayingResult, NowPlayingResultBuilder> {
  int get page;
  @BuiltValueField(wireName: 'total_pages')
  int get totalPages;
  BuiltList<Result> get results;

  NowPlayingResult._();

  factory NowPlayingResult([updates(NowPlayingResultBuilder b)]) =
      _$NowPlayingResult;

  String toJson() {
    return json
        .encode(serializers.serializeWith(NowPlayingResult.serializer, this));
  }

  static NowPlayingResult fromJson(String jsonString) {
    return serializers.deserializeWith(
        NowPlayingResult.serializer, json.decode(jsonString));
  }

  static Serializer<NowPlayingResult> get serializer =>
      _$nowPlayingResultSerializer;
}
