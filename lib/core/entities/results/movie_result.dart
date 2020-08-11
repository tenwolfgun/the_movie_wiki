import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_result.freezed.dart';

@freezed
abstract class MovieResult with _$MovieResult {
  const factory MovieResult({
    @nullable @required double popularity,
    @nullable @required int voteCount,
    @nullable @required String posterPath,
    @nullable @required int id,
    @nullable @required String title,
    @nullable @required double voteAverage,
    @nullable @required String overview,
    @nullable @required String releaseDate,
  }) = _MovieResult;
}
