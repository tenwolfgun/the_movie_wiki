import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/data/models/credits/credits_model.dart';
import '../../../../../../core/data/models/genres/genre_model.dart';
import '../../../../../../core/data/models/images/images_model.dart';
import '../../../../../../core/data/models/production_companies/production_companies_model.dart';
import '../../../../../../core/data/models/results/movie_result_model.dart';
import '../../../../../../core/data/models/reviews/reviews_model.dart';
import '../../../../../../core/data/models/videos/videos_model.dart';
import '../../domain/entities/detail_movie.dart';
import '../../domain/entities/production_countries.dart';
import '../../domain/entities/similar_movies.dart';

part 'detail_movie_model.freezed.dart';
part 'detail_movie_model.g.dart';

@freezed
abstract class DetailMovieModel with _$DetailMovieModel {
  const factory DetailMovieModel({
    @nullable @required double budget,
    @nullable @required List<GenreModel> genres,
    @nullable @required String homepage,
    @JsonKey(name: 'imdb_id') @nullable @required String imdbId,
    @JsonKey(name: 'original_language')
    @nullable
    @required
        String originalLanguage,
    @JsonKey(name: 'original_title') @nullable @required String originalTitle,
    @nullable @required double popularity,
    @JsonKey(name: 'production_companies')
    @nullable
    @required
        List<ProductionCompaniesModel> productionCompanies,
    @JsonKey(name: 'production_countries')
    @nullable
    @required
        List<ProductionCountriesModel> productionCountries,
    @nullable @required double revenue,
    @nullable @required double runtime,
    @nullable @required String status,
    @nullable @required String tagline,
    @nullable @required VideosModel videos,
    @nullable @required SimilarMoviesModel similar,
    @nullable @required CreditsModel credits,
    @nullable @required ImagesModel images,
    @nullable @required ReviewsModel reviews,
  }) = _DetailMovieModel;

  factory DetailMovieModel.fromJson(Map<String, dynamic> json) =>
      _$DetailMovieModelFromJson(json);
}

extension DetailMovieModelX on DetailMovieModel {
  DetailMovie toDetailMovie() {
    return DetailMovie(
      budget: budget,
      genres: genres != null ? genres.map((e) => e.toDomain()).toList() : null,
      homepage: homepage,
      imdbId: imdbId,
      originalLanguage: originalLanguage,
      originalTitle: originalTitle,
      popularity: popularity,
      productionCompanies: productionCompanies != null
          ? productionCompanies.map((e) => e.toDomain()).toList()
          : null,
      productionCountries:
          productionCountries.map((e) => e.toDomain()).toList(),
      revenue: revenue,
      runtime: runtime,
      status: status,
      tagline: tagline,
      videos: videos != null ? videos.toDomain() : null,
      similar: similar != null ? similar.toDomain() : null,
      credits: credits != null ? credits.toDomain() : null,
      images: images != null ? images.toDomain() : null,
      reviews: reviews != null ? reviews.toDomain() : null,
    );
  }
}

@freezed
abstract class ProductionCountriesModel with _$ProductionCountriesModel {
  const factory ProductionCountriesModel({
    @JsonKey(name: 'iso_3166_1') @nullable @required String isoCountry,
    @nullable @required String name,
  }) = _ProductionCountriesModel;

  factory ProductionCountriesModel.fromJson(Map<String, dynamic> json) =>
      _$ProductionCountriesModelFromJson(json);
}

extension ProductionCountriesModelX on ProductionCountriesModel {
  ProductionCountries toDomain() {
    return ProductionCountries(
      isoCountry: isoCountry,
      name: name,
    );
  }
}

@freezed
abstract class SimilarMoviesModel with _$SimilarMoviesModel {
  const factory SimilarMoviesModel({
    @nullable @required List<MovieResultModel> results,
  }) = _SimilarMoviesModel;

  factory SimilarMoviesModel.fromJson(Map<String, dynamic> json) =>
      _$SimilarMoviesModelFromJson(json);
}

extension SimilarMoviesModelX on SimilarMoviesModel {
  SimilarMovies toDomain() {
    return SimilarMovies(
        results:
            results != null ? results.map((e) => e.toDomain()).toList() : null);
  }
}
