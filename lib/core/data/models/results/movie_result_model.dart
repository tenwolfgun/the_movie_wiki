import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/results/movie_result.dart';

part 'movie_result_model.freezed.dart';
part 'movie_result_model.g.dart';

@freezed
abstract class MovieResultModel with _$MovieResultModel {
  const factory MovieResultModel({
    @nullable @required double popularity,
    @JsonKey(name: 'vote_count') @nullable @required int voteCount,
    @JsonKey(name: 'poster_path') @nullable @required String posterPath,
    @nullable @required int id,
    @nullable @required String title,
    @JsonKey(name: 'vote_average') @nullable @required double voteAverage,
    @nullable @required String overview,
    @JsonKey(name: 'release_date') @nullable @required String releaseDate,
  }) = _MovieResultModel;

  factory MovieResultModel.fromJson(Map<String, dynamic> json) =>
      _$MovieResultModelFromJson(json);
}

extension MovieResultModelX on MovieResultModel {
  MovieResult toDomain() {
    return MovieResult(
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
