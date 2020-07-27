import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/entities/credits/credits.dart';
import '../../../../../../core/entities/genre/genre.dart';
import '../../../../../../core/entities/images/images.dart';
import '../../../../../../core/entities/production_companies/production_companies.dart';
import '../../../../../../core/entities/production_countries/production_countries.dart';
import '../../../../../../core/entities/reviews/reviews.dart';
import '../../../../../../core/entities/similar_movies/similar_movies.dart';
import '../../../../../../core/entities/videos/videos.dart';

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
