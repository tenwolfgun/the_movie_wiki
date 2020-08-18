import 'package:freezed_annotation/freezed_annotation.dart';

import '../../entities/results/tv_show_result.dart';

part 'tv_show_result_model.freezed.dart';
part 'tv_show_result_model.g.dart';

@freezed
abstract class TvShowResultModel with _$TvShowResultModel {
  const factory TvShowResultModel({
    @nullable @required double popularity,
    @JsonKey(name: 'vote_count') @nullable @required int voteCount,
    @JsonKey(name: 'poster_path') @nullable @required String posterPath,
    @nullable @required int id,
    @nullable @required String name,
    @JsonKey(name: 'vote_average') @nullable @required double voteAverage,
    @nullable @required String overview,
    @JsonKey(name: 'first_air_date') @nullable @required String firstAirDate,
  }) = _TvShowResultModel;

  factory TvShowResultModel.fromJson(Map<String, dynamic> json) =>
      _$TvShowResultModelFromJson(json);
}

extension TvShowResultModelX on TvShowResultModel {
  TvShowResult toDomain() {
    return TvShowResult(
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
