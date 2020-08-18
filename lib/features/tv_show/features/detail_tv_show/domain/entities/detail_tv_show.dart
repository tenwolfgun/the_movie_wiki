import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/domain/entities/credits/credits.dart';
import '../../../../../../core/domain/entities/genre/genre.dart';
import '../../../../../../core/domain/entities/images/images.dart';
import '../../../../../../core/domain/entities/production_companies/production_companies.dart';
import '../../../../../../core/domain/entities/reviews/reviews.dart';
import '../../../../../../core/domain/entities/videos/videos.dart';
import 'episode_to_air.dart';
import 'networks.dart';
import 'seasons.dart';
import 'similar_tv_show.dart';

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
