import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/domain/entities/credits/credits.dart';
import '../../../../../../core/domain/entities/genre/genre.dart';
import '../../../../../../core/domain/entities/images/images.dart';
import '../../../../../../core/domain/entities/production_companies/production_companies.dart';
import '../../../../../../core/domain/entities/reviews/reviews.dart';
import '../../../../../../core/domain/entities/videos/videos.dart';
import 'production_countries.dart';
import 'similar_movies.dart';

part 'detail_movie.freezed.dart';

@freezed
abstract class DetailMovie with _$DetailMovie {
  const factory DetailMovie({
    @nullable @required double budget,
    @nullable @required List<Genre> genres,
    @nullable @required String homepage,
    @nullable @required String imdbId,
    @nullable @required String originalLanguage,
    @nullable @required String originalTitle,
    @nullable @required double popularity,
    @nullable @required List<ProductionCompanies> productionCompanies,
    @nullable @required List<ProductionCountries> productionCountries,
    @nullable @required double revenue,
    @nullable @required double runtime,
    @nullable @required String status,
    @nullable @required String tagline,
    @nullable @required Videos videos,
    @nullable @required SimilarMovies similar,
    @nullable @required Credits credits,
    @nullable @required Images images,
    @nullable @required Reviews reviews,
  }) = _DetailMovie;
}
