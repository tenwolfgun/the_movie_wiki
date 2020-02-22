library video;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'video.g.dart';

abstract class Video implements Built<Video, VideoBuilder> {
  @nullable
  String get id;
  @nullable
  String get key;
  @nullable
  String get name;
  @nullable
  String get site;
  @nullable
  double get size;
  @nullable
  String get type;

  Video._();

  factory Video([updates(VideoBuilder b)]) = _$Video;

  String toJson() {
    return json.encode(serializers.serializeWith(Video.serializer, this));
  }

  static Video fromJson(String jsonString) {
    return serializers.deserializeWith(
        Video.serializer, json.decode(jsonString));
  }

  static Serializer<Video> get serializer => _$videoSerializer;
}
