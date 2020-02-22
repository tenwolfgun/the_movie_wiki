library tv_show_result;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'tv_show_result.g.dart';

abstract class TvShowResult
    implements Built<TvShowResult, TvShowResultBuilder> {
  @nullable
  double get popularity;
  @nullable
  int get id;
  @nullable
  @BuiltValueField(wireName: 'poster_path')
  String get posterPath;
  @nullable
  @BuiltValueField(wireName: 'backdrop_path')
  String get backdropPath;
  @nullable
  String get name;
  @nullable
  @BuiltValueField(wireName: 'vote_average')
  double get voteAverage;
  @nullable
  String get overview;
  @nullable
  @BuiltValueField(wireName: 'first_air_date')
  String get firstAirDate;

  TvShowResult._();

  factory TvShowResult([updates(TvShowResultBuilder b)]) = _$TvShowResult;

  String toJson() {
    return json
        .encode(serializers.serializeWith(TvShowResult.serializer, this));
  }

  static TvShowResult fromJson(String jsonString) {
    return serializers.deserializeWith(
        TvShowResult.serializer, json.decode(jsonString));
  }

  static Serializer<TvShowResult> get serializer => _$tvShowResultSerializer;
}
