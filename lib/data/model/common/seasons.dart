library seasons;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'seasons.g.dart';

abstract class Seasons implements Built<Seasons, SeasonsBuilder> {
  @nullable
  @BuiltValueField(wireName: 'air_date')
  String get airDate;
  @nullable
  @BuiltValueField(wireName: 'episode_count')
  double get episodeCount;
  @nullable
  double get id;
  @nullable
  String get name;
  @nullable
  String get overview;
  @nullable
  @BuiltValueField(wireName: 'poster_path')
  String get posterPath;
  @nullable
  @BuiltValueField(wireName: 'season_number')
  double get seasonNumber;

  Seasons._();

  factory Seasons([updates(SeasonsBuilder b)]) = _$Seasons;

  String toJson() {
    return json.encode(serializers.serializeWith(Seasons.serializer, this));
  }

  static Seasons fromJson(String jsonString) {
    return serializers.deserializeWith(
        Seasons.serializer, json.decode(jsonString));
  }

  static Serializer<Seasons> get serializer => _$seasonsSerializer;
}
