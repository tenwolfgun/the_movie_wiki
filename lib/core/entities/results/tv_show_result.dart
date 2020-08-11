import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_show_result.freezed.dart';

@freezed
abstract class TvShowResult with _$TvShowResult {
  const factory TvShowResult({
    @nullable @required double popularity,
    @nullable @required int voteCount,
    @nullable @required String posterPath,
    @nullable @required int id,
    @nullable @required String name,
    @nullable @required double voteAverage,
    @nullable @required String overview,
    @nullable @required String firstAirDate,
  }) = _TvShowResult;
}
