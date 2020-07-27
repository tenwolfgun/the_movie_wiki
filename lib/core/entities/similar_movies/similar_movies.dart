import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../features/movie/features/discover_movie/domain/entities/results.dart';

part 'similar_movies.freezed.dart';

@freezed
abstract class SimilarMovies with _$SimilarMovies {
  const factory SimilarMovies({
    @nullable @required List<Results> results,
  }) = _SimilarMovies;
}
