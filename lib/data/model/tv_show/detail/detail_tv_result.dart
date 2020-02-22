library detail_tv_result;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/model/common/created_by.dart';
import 'package:the_movie_wiki/data/model/common/images.dart';
import 'package:the_movie_wiki/data/model/common/last_episode_to_air.dart';
import 'package:the_movie_wiki/data/model/common/networks.dart';
import 'package:the_movie_wiki/data/model/common/reviews.dart';
import 'package:the_movie_wiki/data/model/common/seasons.dart';
import 'package:the_movie_wiki/data/model/genre/genre.dart';
import 'package:the_movie_wiki/data/model/movie/detail/credits.dart';
import 'package:the_movie_wiki/data/model/movie/production_companies/production_companies.dart';
import 'package:the_movie_wiki/data/model/movie/videos/videos_result.dart';
import 'package:the_movie_wiki/data/model/tv_show/detail/similar_tv.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'detail_tv_result.g.dart';

abstract class DetailTvResult
    implements Built<DetailTvResult, DetailTvResultBuilder> {
  @nullable
  @BuiltValueField(wireName: 'backdrop_path')
  String get backdropPath;
  @nullable
  @BuiltValueField(wireName: 'created_by')
  BuiltList<CreatedBy> get createdBy;
  @nullable
  @BuiltValueField(wireName: 'episode_run_time')
  BuiltList<double> get episodeRunTime;
  @nullable
  @BuiltValueField(wireName: 'first_air_date')
  String get firstAirDate;
  @nullable
  BuiltList<Genre> get genres;
  @nullable
  String get homepage;
  @nullable
  double get id;
  @nullable
  BuiltList<String> get languages;
  @nullable
  @BuiltValueField(wireName: 'last_air_date')
  String get lastAirDate;
  @nullable
  @BuiltValueField(wireName: 'last_episode_to_air')
  LastEpisodeToAir get lastEpisodeToAir;
  @nullable
  @BuiltValueField(wireName: 'next_episode_to_air')
  LastEpisodeToAir get nextEpisodeToAir;
  @nullable
  String get name;
  @nullable
  BuiltList<Networks> get networks;
  @nullable
  @BuiltValueField(wireName: 'number_of_episodes')
  double get numberOfEpisodes;
  @nullable
  @BuiltValueField(wireName: 'number_of_seasons')
  double get numberOfSeasons;
  @nullable
  @BuiltValueField(wireName: 'origin_country')
  BuiltList<String> get originCountry;
  @nullable
  @BuiltValueField(wireName: 'original_language')
  String get originalLanguage;
  @nullable
  @BuiltValueField(wireName: 'original_name')
  String get originalName;
  @nullable
  String get overview;
  @nullable
  @BuiltValueField(wireName: 'production_companies')
  BuiltList<ProductionCompanies> get productionCompanies;
  @nullable
  String get status;
  @nullable
  String get type;
  @nullable
  BuiltList<Seasons> get seasons;
  @nullable
  Images get images;
  @nullable
  Credits get credits;
  @nullable
  VideosResult get videos;
  @nullable
  Reviews get reviews;
  @nullable
  SimilarTv get similar;
  @nullable
  @BuiltValueField(wireName: 'vote_average')
  double get voteAverage;

  DetailTvResult._();

  factory DetailTvResult([updates(DetailTvResultBuilder b)]) = _$DetailTvResult;

  String toJson() {
    return json
        .encode(serializers.serializeWith(DetailTvResult.serializer, this));
  }

  static DetailTvResult fromJson(String jsonString) {
    return serializers.deserializeWith(
        DetailTvResult.serializer, json.decode(jsonString));
  }

  static Serializer<DetailTvResult> get serializer =>
      _$detailTvResultSerializer;
}
