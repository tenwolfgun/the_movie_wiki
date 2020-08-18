import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/models/credits/credits_model.dart';
import '../../../../../../core/models/genres/genre_model.dart';
import '../../../../../../core/models/images/images_model.dart';
import '../../../../../../core/models/production_companies/production_companies_model.dart';
import '../../../../../../core/models/results/tv_show_result_model.dart';
import '../../../../../../core/models/reviews/reviews_model.dart';
import '../../../../../../core/models/videos/videos_model.dart';
import '../../domain/entities/detail_tv_show.dart';
import '../../domain/entities/episode_to_air.dart';
import '../../domain/entities/networks.dart';
import '../../domain/entities/seasons.dart';
import '../../domain/entities/similar_tv_show.dart';

part 'detail_tv_show_model.freezed.dart';
part 'detail_tv_show_model.g.dart';

@freezed
abstract class DetailTvShowModel with _$DetailTvShowModel {
  const factory DetailTvShowModel({
    @JsonKey(name: 'episode_run_time')
    @required
    @nullable
        List<int> episodeRunTime,
    @JsonKey(name: 'first_air_date') @nullable @required String firstAirDate,
    @nullable @required List<GenreModel> genres,
    @JsonKey(name: 'homepage') @nullable @required String homePage,
    @JsonKey(name: 'in_production') @nullable @required bool inProduction,
    @nullable @required List<String> languages,
    @JsonKey(name: 'last_air_date') @nullable @required String lastAirDate,
    @JsonKey(name: 'last_episode_to_air')
    @nullable
    @required
        EpisodeToAirModel lastEpisodeToAir,
    @JsonKey(name: 'next_episode_to_air')
    @nullable
    @required
        EpisodeToAirModel nextEpisodeToAir,
    @nullable @required List<NetworksModel> networks,
    @JsonKey(name: 'number_of_episodes')
    @nullable
    @required
        int numberOfEpisodes,
    @JsonKey(name: 'number_of_seasons') @nullable @required int numberOfSeasons,
    @JsonKey(name: 'origin_country')
    @nullable
    @required
        List<String> originCountry,
    @JsonKey(name: 'original_language')
    @nullable
    @required
        String originalLanguage,
    @JsonKey(name: 'original_name') @nullable @required String originalName,
    @JsonKey(name: 'production_companies')
    @nullable
    @required
        List<ProductionCompaniesModel> productionCompanies,
    @nullable @required List<SeasonsModel> seasons,
    @nullable @required String status,
    @nullable @required String type,
    @nullable @required VideosModel videos,
    @nullable @required ImagesModel images,
    @nullable @required SimilarTvShowModel similar,
    @nullable @required CreditsModel credits,
    @nullable @required ReviewsModel reviews,
  }) = _DetailTvShowModel;

  factory DetailTvShowModel.fromJson(Map<String, dynamic> json) =>
      _$DetailTvShowModelFromJson(json);
}

extension DetailTvShowModelX on DetailTvShowModel {
  DetailTvShow toDomain() => DetailTvShow(
        episodeRunTime: episodeRunTime,
        firstAirDate: firstAirDate,
        genres:
            genres != null ? genres.map((e) => e.toDomain()).toList() : null,
        homePage: homePage,
        inProduction: inProduction,
        languages: languages,
        lastAirDate: lastAirDate,
        lastEpisodeToAir:
            lastEpisodeToAir != null ? lastEpisodeToAir.toDomain() : null,
        nextEpisodeToAir:
            nextEpisodeToAir != null ? nextEpisodeToAir.toDomain() : null,
        networks: networks != null
            ? networks.map((e) => e.toDomain()).toList()
            : null,
        numberOfEpisodes: numberOfEpisodes,
        numberOfSeasons: numberOfSeasons,
        originCountry: originCountry,
        originalLanguage: originalLanguage,
        originalName: originalName,
        productionCompanies: productionCompanies != null
            ? productionCompanies.map((e) => e.toDomain()).toList()
            : null,
        seasons:
            seasons != null ? seasons.map((e) => e.toDomain()).toList() : null,
        status: status,
        type: type,
        videos: videos != null ? videos.toDomain() : null,
        images: images != null ? images.toDomain() : null,
        similar: similar != null ? similar.toDomain() : null,
        credits: credits != null ? credits.toDomain() : null,
        reviews: reviews != null ? reviews.toDomain() : null,
      );
}

@freezed
abstract class SeasonsModel with _$SeasonsModel {
  const factory SeasonsModel({
    @JsonKey(name: 'air_date') @nullable @required String airDate,
    @JsonKey(name: 'episode_count') @nullable @required int episodeCount,
    @nullable @required int id,
    @nullable @required String name,
    @nullable @required String overview,
    @JsonKey(name: 'poster_path') @nullable @required String posterPath,
    @JsonKey(name: 'season_number') @nullable @required int sesonNumber,
  }) = _SeasonsModel;

  factory SeasonsModel.fromJson(Map<String, dynamic> json) =>
      _$SeasonsModelFromJson(json);
}

extension SeasonsModelX on SeasonsModel {
  Seasons toDomain() => Seasons(
        airDate: airDate,
        episodeCount: episodeCount,
        id: id,
        name: name,
        overview: overview,
        posterPath: posterPath,
        sesonNumber: sesonNumber,
      );
}

@freezed
abstract class EpisodeToAirModel with _$EpisodeToAirModel {
  const factory EpisodeToAirModel({
    @JsonKey(name: 'air_date') @nullable @required String airDate,
    @JsonKey(name: 'episode_number') @nullable @required int episodeNumber,
    @nullable @required String name,
    @nullable @required String overview,
    @JsonKey(name: 'season_number') @nullable @required int seasonNumber,
    @JsonKey(name: 'still_path') @nullable @required String stillPath,
  }) = _EpisodeToAirModel;

  factory EpisodeToAirModel.fromJson(Map<String, dynamic> json) =>
      _$EpisodeToAirModelFromJson(json);
}

extension EpisodeToAirModelX on EpisodeToAirModel {
  EpisodeToAir toDomain() => EpisodeToAir(
        airDate: airDate,
        episodeNumber: episodeNumber,
        name: name,
        overview: overview,
        seasonNumber: seasonNumber,
        stillPath: stillPath,
      );
}

@freezed
abstract class SimilarTvShowModel with _$SimilarTvShowModel {
  const factory SimilarTvShowModel({
    @nullable @required List<TvShowResultModel> results,
  }) = _SimilarTvShowModel;

  factory SimilarTvShowModel.fromJson(Map<String, dynamic> json) =>
      _$SimilarTvShowModelFromJson(json);
}

extension SimilarTvShowModelX on SimilarTvShowModel {
  SimilarTvShow toDomain() {
    return SimilarTvShow(
      results: results
          .map(
            (e) => e.toDomain(),
          )
          .toList(),
    );
  }
}

@freezed
abstract class NetworksModel with _$NetworksModel {
  const factory NetworksModel({
    @nullable @required String name,
    @nullable @required int id,
  }) = _NetworksModel;

  factory NetworksModel.fromJson(Map<String, dynamic> json) =>
      _$NetworksModelFromJson(json);
}

extension NetworksModelX on NetworksModel {
  Networks toDomain() => Networks(name: name, id: id);
}
