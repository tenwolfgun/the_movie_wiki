library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:the_movie_wiki/data/model/common/backdrops.dart';
import 'package:the_movie_wiki/data/model/common/created_by.dart';
import 'package:the_movie_wiki/data/model/common/images.dart';
import 'package:the_movie_wiki/data/model/common/known_for.dart';
import 'package:the_movie_wiki/data/model/common/last_episode_to_air.dart';
import 'package:the_movie_wiki/data/model/common/networks.dart';
import 'package:the_movie_wiki/data/model/common/people_result.dart';
import 'package:the_movie_wiki/data/model/common/posters.dart';
import 'package:the_movie_wiki/data/model/common/result.dart';
import 'package:the_movie_wiki/data/model/common/review_result.dart';
import 'package:the_movie_wiki/data/model/common/reviews.dart';
import 'package:the_movie_wiki/data/model/common/seasons.dart';
import 'package:the_movie_wiki/data/model/common/spoken_languages.dart';
import 'package:the_movie_wiki/data/model/common/tv_show_result.dart';
import 'package:the_movie_wiki/data/model/genre/genre.dart';
import 'package:the_movie_wiki/data/model/genre/genre_result.dart';
import 'package:the_movie_wiki/data/model/movie/detail/cast.dart';
import 'package:the_movie_wiki/data/model/movie/detail/credits.dart';
import 'package:the_movie_wiki/data/model/movie/detail/crew.dart';
import 'package:the_movie_wiki/data/model/movie/detail/detail_movie_result.dart';
import 'package:the_movie_wiki/data/model/movie/detail/release_dates.dart';
import 'package:the_movie_wiki/data/model/movie/detail/release_dates_result.dart';
import 'package:the_movie_wiki/data/model/movie/detail/release_dates_result_in_result.dart';
import 'package:the_movie_wiki/data/model/movie/detail/similar_movies.dart';
import 'package:the_movie_wiki/data/model/movie/now_playing/now_playing_result.dart';
import 'package:the_movie_wiki/data/model/movie/popular/popular_result.dart';
import 'package:the_movie_wiki/data/model/movie/production_companies/production_companies.dart';
import 'package:the_movie_wiki/data/model/movie/production_countries/production_countries.dart';
import 'package:the_movie_wiki/data/model/movie/top_rated/top_rated_result.dart';
import 'package:the_movie_wiki/data/model/movie/trending/trending_movie_result.dart';
import 'package:the_movie_wiki/data/model/movie/videos/video.dart';
import 'package:the_movie_wiki/data/model/movie/videos/videos_result.dart';
import 'package:the_movie_wiki/data/model/people/trending/trending_people_result.dart';
import 'package:the_movie_wiki/data/model/tv_show/airing_today/airing_today_result.dart';
import 'package:the_movie_wiki/data/model/tv_show/detail/detail_tv_result.dart';
import 'package:the_movie_wiki/data/model/tv_show/detail/similar_tv.dart';
import 'package:the_movie_wiki/data/model/tv_show/on_air/on_air_result.dart';
import 'package:the_movie_wiki/data/model/tv_show/popular/popular_tv_show_result.dart';
import 'package:the_movie_wiki/data/model/movie/upcoming/upcoming_result.dart';
import 'package:the_movie_wiki/data/model/tv_show/top_rated/top_rated_result_tv_show.dart';
import 'package:the_movie_wiki/data/model/tv_show/trending/trending_tv_show_result.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  PopularResult,
  NowPlayingResult,
  Result,
  GenreResult,
  UpcomingResult,
  Genre,
  TopRatedResult,
  TvShowResult,
  PopularTvShowResult,
  AiringTodayResult,
  OnAirResult,
  TopRatedResultTvShow,
  TrendingMovieResult,
  TrendingTvShowResult,
  PeopleResult,
  KnownFor,
  TrendingPeopleResult,
  SpokenLanguages,
  DetailMovieResult,
  ProductionCompanies,
  ProductionCountries,
  Video,
  VideosResult,
  SimilarMovies,
  Cast,
  Crew,
  Credits,
  Images,
  Backdrops,
  Posters,
  Reviews,
  ReviewResult,
  CreatedBy,
  LastEpisodeToAir,
  Networks,
  Seasons,
  DetailTvResult,
  SimilarTv,
  ReleaseDates,
  ReleaseDatesResult,
  ReleaseDatesResultInResult,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
