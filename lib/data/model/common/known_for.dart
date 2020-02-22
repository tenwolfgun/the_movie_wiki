library known_for;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'known_for.g.dart';

abstract class KnownFor implements Built<KnownFor, KnownForBuilder> {
  @nullable
  double get popularity;
  @nullable
  double get id;
  @nullable
  @BuiltValueField(wireName: 'poster_path')
  String get posterPath;
  @nullable
  @BuiltValueField(wireName: 'backdrop_path')
  String get backdropPath;
  @nullable
  String get title;
  @nullable
  String get name;
  @nullable
  @BuiltValueField(wireName: 'vote_average')
  double get voteAverage;
  @nullable
  String get overview;
  @nullable
  @BuiltValueField(wireName: 'release_date')
  String get releaseDate;
  @nullable
  @BuiltValueField(wireName: 'first_air_date')
  String get firstAirDate;

  KnownFor._();

  factory KnownFor([updates(KnownForBuilder b)]) = _$KnownFor;

  String toJson() {
    return json.encode(serializers.serializeWith(KnownFor.serializer, this));
  }

  static KnownFor fromJson(String jsonString) {
    return serializers.deserializeWith(
        KnownFor.serializer, json.decode(jsonString));
  }

  static Serializer<KnownFor> get serializer => _$knownForSerializer;
}
