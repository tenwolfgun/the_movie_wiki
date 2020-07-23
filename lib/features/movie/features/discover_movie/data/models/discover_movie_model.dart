import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_movie_wiki/features/movie/features/discover_movie/domain/entities/discover_movie.dart';

part 'discover_movie_model.freezed.dart';
part 'discover_movie_model.g.dart';

@freezed
abstract class DiscoverMovieModel with _$DiscoverMovieModel {
  const factory DiscoverMovieModel({
    @nullable @required List<ResultModel> results,
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

@freezed
abstract class ResultModel with _$ResultModel {
  const factory ResultModel({
    @nullable @required double popularity,
    @JsonKey(name: 'vote_count') @nullable @required int voteCount,
    @JsonKey(name: 'poster_path') @nullable @required String posterPath,
    @nullable @required int id,
    @nullable @required String title,
    @JsonKey(name: 'vote_average') @nullable @required double voteAverage,
    @nullable @required String overview,
    @JsonKey(name: 'release_date') @nullable @required String releaseDate,
  }) = _ResultModel;

  factory ResultModel.fromJson(Map<String, dynamic> json) =>
      _$ResultModelFromJson(json);
}

extension ResultModelX on ResultModel {
  Result toDomain() {
    return Result(
      popularity: popularity,
      voteCount: voteCount,
      posterPath: posterPath,
      id: id,
      title: title,
      voteAverage: voteAverage,
      overview: overview,
      releaseDate: releaseDate,
    );
  }
}
