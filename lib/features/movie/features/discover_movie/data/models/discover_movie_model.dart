import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/models/results/movie_result_model.dart';
import '../../domain/entities/discover_movie.dart';

part 'discover_movie_model.freezed.dart';
part 'discover_movie_model.g.dart';

@freezed
abstract class DiscoverMovieModel with _$DiscoverMovieModel {
  const factory DiscoverMovieModel({
    @nullable @required List<MovieResultModel> results,
    @nullable @required int page,
    @JsonKey(name: 'total_results') @nullable @required int totalResults,
    @JsonKey(name: 'total_pages') @nullable @required int totalPages,
  }) = _DiscoverMovieModel;

  factory DiscoverMovieModel.fromJson(Map<String, dynamic> json) =>
      _$DiscoverMovieModelFromJson(json);
}

extension DiscoverMovieModelX on DiscoverMovieModel {
  DiscoverMovie toDomain() {
    return DiscoverMovie(
      results: results.map((e) => e.toDomain()).toList(),
      page: page,
      totalResults: totalResults,
      totalPages: totalPages,
    );
  }
}
