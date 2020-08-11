import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_movie_wiki/core/models/results/tv_show_result_model.dart';

import '../../domain/entities/discover_tv_show.dart';

part 'discover_tv_show_model.freezed.dart';
part 'discover_tv_show_model.g.dart';

@freezed
abstract class DiscoverTvShowModel with _$DiscoverTvShowModel {
  const factory DiscoverTvShowModel({
    @nullable @required List<TvShowResultModel> results,
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
