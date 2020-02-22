library last_episode_to_air;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'last_episode_to_air.g.dart';

abstract class LastEpisodeToAir
    implements Built<LastEpisodeToAir, LastEpisodeToAirBuilder> {
  @nullable
  @BuiltValueField(wireName: 'air_date')
  String get airDate;
  @nullable
  @BuiltValueField(wireName: 'episode_number')
  double get episodeNumber;
  @nullable
  double get id;
  @nullable
  String get name;
  @nullable
  String get overview;
  @nullable
  @BuiltValueField(wireName: 'season_number')
  double get seasonNumber;
  @nullable
  @BuiltValueField(wireName: 'still_path')
  String get stillPath;

  LastEpisodeToAir._();

  factory LastEpisodeToAir([updates(LastEpisodeToAirBuilder b)]) =
      _$LastEpisodeToAir;

  String toJson() {
    return json
        .encode(serializers.serializeWith(LastEpisodeToAir.serializer, this));
  }

  static LastEpisodeToAir fromJson(String jsonString) {
    return serializers.deserializeWith(
        LastEpisodeToAir.serializer, json.decode(jsonString));
  }

  static Serializer<LastEpisodeToAir> get serializer =>
      _$lastEpisodeToAirSerializer;
}
