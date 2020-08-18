import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/domain/entities/results/movie_result.dart';

part 'similar_movies.freezed.dart';

@freezed
abstract class SimilarMovies with _$SimilarMovies {
  const factory SimilarMovies({
    @nullable @required List<MovieResult> results,
  }) = _SimilarMovies;
}
