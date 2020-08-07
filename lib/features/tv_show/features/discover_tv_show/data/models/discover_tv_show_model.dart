import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_movie_wiki/features/tv_show/features/discover_tv_show/domain/entities/discover_tv_show.dart';
import 'package:the_movie_wiki/features/tv_show/features/discover_tv_show/domain/entities/discover_tv_show_result.dart';

part 'discover_tv_show_model.freezed.dart';
part 'discover_tv_show_model.g.dart';

@freezed
abstract class DiscoverTvShowModel with _$DiscoverTvShowModel {
  const factory DiscoverTvShowModel({
    @nullable @required List<DiscoverTvShowResultModel> results,
    @nullable @required int page,
    @JsonKey(name: 'total_results') @nullable @required int totalResults,
    @JsonKey(name: 'total_pages') @nullable @required int totalPages,
  }) = _DiscoverTvShowModel;

  factory DiscoverTvShowModel.fromJson(Map<String, dynamic> json) =>
      _$DiscoverTvShowModelFromJson(json);
}

extension DiscoverTvShowModelX on DiscoverTvShowModel {
  DiscoverTvShow toDomain() {
    return DiscoverTvShow(
      results: results.map((e) => e.toDomain()).toList(),
      page: page,
      totalResults: totalResults,
      totalPages: totalPages,
    );
  }
}

@freezed
abstract class DiscoverTvShowResultModel with _$DiscoverTvShowResultModel {
  const factory DiscoverTvShowResultModel({
    @nullable @required double popularity,
    @JsonKey(name: 'vote_count') @nullable @required int voteCount,
    @JsonKey(name: 'poster_path') @nullable @required String posterPath,
    @nullable @required int id,
    @nullable @required String name,
    @JsonKey(name: 'vote_average') @nullable @required double voteAverage,
    @nullable @required String overview,
    @JsonKey(name: 'first_air_date') @nullable @required String firstAirDate,
  }) = _DiscoverTvShowResultModel;

  factory DiscoverTvShowResultModel.fromJson(Map<String, dynamic> json) =>
      _$DiscoverTvShowResultModelFromJson(json);
}

extension DiscoverTvShowResultModelX on DiscoverTvShowResultModel {
  DiscoverTvShowResult toDomain() {
    return DiscoverTvShowResult(
      popularity: popularity,
      voteCount: voteCount,
      posterPath: posterPath,
      id: id,
      name: name,
      voteAverage: voteAverage,
      overview: overview,
      firstAirDate: firstAirDate,
    );
  }
}
