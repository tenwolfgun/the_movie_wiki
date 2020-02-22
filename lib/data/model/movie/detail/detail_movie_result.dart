library detail_movie_result;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/model/common/images.dart';
import 'package:the_movie_wiki/data/model/common/reviews.dart';
import 'package:the_movie_wiki/data/model/common/spoken_languages.dart';
import 'package:the_movie_wiki/data/model/genre/genre.dart';
import 'package:the_movie_wiki/data/model/movie/detail/credits.dart';
import 'package:the_movie_wiki/data/model/movie/detail/release_dates.dart';
import 'package:the_movie_wiki/data/model/movie/detail/similar_movies.dart';
import 'package:the_movie_wiki/data/model/movie/production_countries/production_countries.dart';
import 'package:the_movie_wiki/data/model/movie/production_companies/production_companies.dart';
import 'package:the_movie_wiki/data/model/movie/videos/videos_result.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'detail_movie_result.g.dart';

abstract class DetailMovieResult
    implements Built<DetailMovieResult, DetailMovieResultBuilder> {
  @nullable
  @BuiltValueField(wireName: 'backdrop_path')
  String get backdropPath;
  @nullable
  double get budget;
  @nullable
  BuiltList<Genre> get genres;
  @nullable
  String get homepage;
  @nullable
  double get id;
  @nullable
  @BuiltValueField(wireName: 'imdb_id')
  String get imdbId;
  @nullable
  @BuiltValueField(wireName: 'original_language')
  String get originalLanguage;
  @nullable
  @BuiltValueField(wireName: 'original_title')
  String get originalTitle;
  @nullable
  String get overview;
  @nullable
  double get popularity;
  @nullable
  @BuiltValueField(wireName: 'poster_path')
  String get posterPath;
  @nullable
  @BuiltValueField(wireName: 'production_companies')
  BuiltList<ProductionCompanies> get productionCompanies;
  @nullable
  @BuiltValueField(wireName: 'production_countries')
  BuiltList<ProductionCountries> get productionCountries;
  @nullable
  @BuiltValueField(wireName: 'release_date')
  String get releaseDate;
  @nullable
  double get revenue;
  @nullable
  double get runtime;
  @nullable
  @BuiltValueField(wireName: 'spoken_languages')
  BuiltList<SpokenLanguages> get spokenLanguages;
  @nullable
  String get status;
  @nullable
  String get tagline;
  @nullable
  String get title;
  @nullable
  @BuiltValueField(wireName: 'vote_average')
  double get voteAverage;
  @nullable
  @BuiltValueField(wireName: 'vote_count')
  double get voteCount;
  @nullable
  VideosResult get videos;
  @nullable
  SimilarMovies get similar;
  @nullable
  Credits get credits;
  @nullable
  Images get images;
  @nullable
  Reviews get reviews;
  @nullable
  @BuiltValueField(wireName: 'release_dates')
  ReleaseDates get releaseDates;

  DetailMovieResult._();

  factory DetailMovieResult([updates(DetailMovieResultBuilder b)]) =
      _$DetailMovieResult;

  String toJson() {
    return json
        .encode(serializers.serializeWith(DetailMovieResult.serializer, this));
  }

  static DetailMovieResult fromJson(String jsonString) {
    return serializers.deserializeWith(
        DetailMovieResult.serializer, json.decode(jsonString));
  }

  static Serializer<DetailMovieResult> get serializer =>
      _$detailMovieResultSerializer;
}
