library videos_result;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/model/movie/videos/video.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'videos_result.g.dart';

abstract class VideosResult
    implements Built<VideosResult, VideosResultBuilder> {
  @nullable
  BuiltList<Video> get results;

  VideosResult._();

  factory VideosResult([updates(VideosResultBuilder b)]) = _$VideosResult;

  String toJson() {
    return json
        .encode(serializers.serializeWith(VideosResult.serializer, this));
  }

  static VideosResult fromJson(String jsonString) {
    return serializers.deserializeWith(
        VideosResult.serializer, json.decode(jsonString));
  }

  static Serializer<VideosResult> get serializer => _$videosResultSerializer;
}
