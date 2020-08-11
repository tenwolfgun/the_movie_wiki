import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_movie_wiki/core/entities/credits/credits.dart';
import 'package:the_movie_wiki/core/entities/genre/genre.dart';
import 'package:the_movie_wiki/core/entities/images/images.dart';
import 'package:the_movie_wiki/core/entities/production_companies/production_companies.dart';
import 'package:the_movie_wiki/core/entities/reviews/reviews.dart';
import 'package:the_movie_wiki/core/entities/videos/videos.dart';
import 'package:the_movie_wiki/features/tv_show/features/detail_tv_show/domain/entities/seasons.dart';
import 'package:the_movie_wiki/features/tv_show/features/detail_tv_show/domain/entities/similar_tv_show.dart';

import 'episode_to_air.dart';
import 'networks.dart';

part 'detail_tv_show.freezed.dart';

@freezed
abstract class DetailTvShow with _$DetailTvShow {
  const factory DetailTvShow({
    @required @nullable List<int> episodeRunTime,
    @nullable @required String firstAirDate,
    @nullable @required List<Genre> genres,
    @nullable @required String homePage,
    @nullable @required bool inProduction,
    @nullable @required List<String> languages,
    @nullable @required String lastAirDate,
    @nullable @required EpisodeToAir lastEpisodeToAir,
    @nullable @required EpisodeToAir nextEpisodeToAir,
    @nullable @required List<Networks> networks,
    @nullable @required int numberOfEpisodes,
    @nullable @required int numberOfSeasons,
    @nullable @required List<String> originCountry,
    @nullable @required String originalLanguage,
    @nullable @required String originalName,
    @nullable @required List<ProductionCompanies> productionCompanies,
    @nullable @required List<Seasons> seasons,
    @nullable @required String status,
    @nullable @required String type,
    @nullable @required Videos videos,
    @nullable @required Images images,
    @nullable @required SimilarTvShow similar,
    @nullable @required Credits credits,
    @nullable @required Reviews reviews,
  }) = _DetailTvShow;
}
