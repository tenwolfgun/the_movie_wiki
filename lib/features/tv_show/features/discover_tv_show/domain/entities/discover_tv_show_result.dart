import 'package:freezed_annotation/freezed_annotation.dart';

part 'discover_tv_show_result.freezed.dart';

@freezed
abstract class DiscoverTvShowResult with _$DiscoverTvShowResult {
  const factory DiscoverTvShowResult({
    @nullable @required double popularity,
    @nullable @required int voteCount,
    @nullable @required String posterPath,
    @nullable @required int id,
    @nullable @required String name,
    @nullable @required double voteAverage,
    @nullable @required String overview,
    @nullable @required String firstAirDate,
  }) = _DiscoverTvShowResult;
}
