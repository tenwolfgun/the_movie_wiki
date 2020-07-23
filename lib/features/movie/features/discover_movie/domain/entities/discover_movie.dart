import 'package:freezed_annotation/freezed_annotation.dart';

part 'discover_movie.freezed.dart';

@freezed
abstract class DiscoverMovie with _$DiscoverMovie {
  const factory DiscoverMovie({
    @nullable @required List<Result> results,
    @nullable @required int page,
    @nullable @required int totalResults,
    @nullable @required int totalPages,
  }) = _DiscoverMovie;
}

@freezed
abstract class Result with _$Result {
  const factory Result({
    @nullable @required double popularity,
    @nullable @required int voteCount,
    @nullable @required String posterPath,
    @nullable @required int id,
    @nullable @required String title,
    @nullable @required double voteAverage,
    @nullable @required String overview,
    @nullable @required String releaseDate,
  }) = _Result;
}
