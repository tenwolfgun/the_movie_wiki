import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/entities/credits/cast.dart';
import '../../../../../../core/entities/credits/credits.dart';
import '../../../../../../core/entities/genre/genre.dart';
import '../../../../../../core/entities/images/backdrops.dart';
import '../../../../../../core/entities/images/images.dart';
import '../../../../../../core/entities/images/posters.dart';
import '../../../../../../core/entities/production_companies/production_companies.dart';
import '../../../../../../core/entities/production_countries/production_countries.dart';
import '../../../../../../core/entities/reviews/review_result.dart';
import '../../../../../../core/entities/reviews/reviews.dart';
import '../../../../../../core/entities/similar_movies/similar_movies.dart';
import '../../../../../../core/entities/videos/video_result.dart';
import '../../../../../../core/entities/videos/videos.dart';
import '../../../discover_movie/data/models/discover_movie_model.dart';
import '../../domain/entities/detail_movie.dart';

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
      genres: genres.map((e) => e.toGenre()).toList(),
      homepage: homepage,
      imdbId: imdbId,
      originalLanguage: originalLanguage,
      originalTitle: originalTitle,
      popularity: popularity,
      productionCompanies:
          productionCompanies.map((e) => e.toProductionCompanies()).toList(),
      productionCountries:
          productionCountries.map((e) => e.toProductionCountries()).toList(),
      revenue: revenue,
      runtime: runtime,
      status: status,
      tagline: tagline,
      videos: videos.toVideos(),
      similar: similar.toSimilarMovies(),
      credits: credits.toCredits(),
      images: images.toImages(),
      reviews: reviews.toReviews(),
    );
  }
}

@freezed
abstract class GenreModel with _$GenreModel {
  const factory GenreModel({
    @nullable @required int id,
    @nullable @required String name,
  }) = _GenreModel;

  factory GenreModel.fromJson(Map<String, dynamic> json) =>
      _$GenreModelFromJson(json);
}

extension GenreModelX on GenreModel {
  Genre toGenre() {
    return Genre(
      id: id,
      name: name,
    );
  }
}

@freezed
abstract class ProductionCompaniesModel with _$ProductionCompaniesModel {
  const factory ProductionCompaniesModel({
    @nullable @required int id,
    @JsonKey(name: 'logo_path') @nullable @required String logoPath,
    @nullable @required String name,
    @JsonKey(name: 'origin_country') @nullable @required String originCountry,
  }) = _ProductionCompaniesModel;

  factory ProductionCompaniesModel.fromJson(Map<String, dynamic> json) =>
      _$ProductionCompaniesModelFromJson(json);
}

extension ProductionCompaniesModelX on ProductionCompaniesModel {
  ProductionCompanies toProductionCompanies() {
    return ProductionCompanies(
      id: id,
      logoPath: logoPath,
      name: name,
      originCountry: originCountry,
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
  ProductionCountries toProductionCountries() {
    return ProductionCountries(
      isoCountry: isoCountry,
      name: name,
    );
  }
}

@freezed
abstract class VideosModel with _$VideosModel {
  const factory VideosModel({
    @nullable @required List<VideoResultModel> results,
  }) = _VideosModel;

  factory VideosModel.fromJson(Map<String, dynamic> json) =>
      _$VideosModelFromJson(json);
}

extension VideosModelX on VideosModel {
  Videos toVideos() {
    return Videos(results: results.map((e) => e.toVideoResult()).toList());
  }
}

@freezed
abstract class VideoResultModel with _$VideoResultModel {
  const factory VideoResultModel({
    @nullable @required String id,
    @nullable @required String key,
    @nullable @required String name,
    @nullable @required String site,
    @nullable @required double size,
    @nullable @required String type,
  }) = _VideoResultModel;

  factory VideoResultModel.fromJson(Map<String, dynamic> json) =>
      _$VideoResultModelFromJson(json);
}

extension VideoResultModelX on VideoResultModel {
  VideoResult toVideoResult() {
    return VideoResult(
      id: id,
      key: key,
      name: name,
      site: site,
      size: size,
      type: type,
    );
  }
}

@freezed
abstract class SimilarMoviesModel with _$SimilarMoviesModel {
  const factory SimilarMoviesModel({
    @nullable @required List<ResultModel> results,
  }) = _SimilarMoviesModel;

  factory SimilarMoviesModel.fromJson(Map<String, dynamic> json) =>
      _$SimilarMoviesModelFromJson(json);
}

extension SimilarMoviesModelX on SimilarMoviesModel {
  SimilarMovies toSimilarMovies() {
    return SimilarMovies(results: results.map((e) => e.toDomain()).toList());
  }
}

@freezed
abstract class CreditsModel with _$CreditsModel {
  const factory CreditsModel({
    @nullable @required List<CastModel> cast,
  }) = _CreditsModel;

  factory CreditsModel.fromJson(Map<String, dynamic> json) =>
      _$CreditsModelFromJson(json);
}

extension CreditsModelX on CreditsModel {
  Credits toCredits() {
    return Credits(cast: cast.map((e) => e.toCast()).toList());
  }
}

@freezed
abstract class CastModel with _$CastModel {
  const factory CastModel({
    @nullable @required int id,
    @nullable @required String character,
    @nullable @required String name,
    @JsonKey(name: 'profile_path') @nullable @required String profilePath,
  }) = _CastModel;

  factory CastModel.fromJson(Map<String, dynamic> json) =>
      _$CastModelFromJson(json);
}

extension CastModelX on CastModel {
  Cast toCast() {
    return Cast(
      id: id,
      character: character,
      name: name,
      profilePath: profilePath,
    );
  }
}

@freezed
abstract class ImagesModel with _$ImagesModel {
  const factory ImagesModel({
    @nullable @required List<BackdropsModel> backdrops,
    @nullable @required List<PostersModel> posters,
  }) = _ImagesModel;

  factory ImagesModel.fromJson(Map<String, dynamic> json) =>
      _$ImagesModelFromJson(json);
}

extension ImagesModelX on ImagesModel {
  Images toImages() {
    return Images(
      backdrops: backdrops.map((e) => e.toBackdrops()).toList(),
      posters: posters.map((e) => e.toPosters()).toList(),
    );
  }
}

@freezed
abstract class BackdropsModel with _$BackdropsModel {
  const factory BackdropsModel({
    @JsonKey(name: 'file_path') @nullable @required String filePath,
    @nullable @required double height,
    @nullable @required double width,
  }) = _BackdropsModel;

  factory BackdropsModel.fromJson(Map<String, dynamic> json) =>
      _$BackdropsModelFromJson(json);
}

extension BackdropsModelX on BackdropsModel {
  Backdrops toBackdrops() {
    return Backdrops(
      filePath: filePath,
      height: height,
      width: width,
    );
  }
}

@freezed
abstract class PostersModel with _$PostersModel {
  const factory PostersModel({
    @JsonKey(name: 'file_path') @nullable @required String filePath,
    @nullable @required double height,
    @nullable @required double width,
  }) = _PostersModel;

  factory PostersModel.fromJson(Map<String, dynamic> json) =>
      _$PostersModelFromJson(json);
}

extension PostersModelX on PostersModel {
  Posters toPosters() {
    return Posters(
      filePath: filePath,
      height: height,
      width: width,
    );
  }
}

@freezed
abstract class ReviewsModel with _$ReviewsModel {
  const factory ReviewsModel({
    @nullable @required List<ReviewResultModel> results,
  }) = _ReviewsModel;

  factory ReviewsModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewsModelFromJson(json);
}

extension ReviewsModelX on ReviewsModel {
  Reviews toReviews() {
    return Reviews(results: results.map((e) => e.toReviewResult()).toList());
  }
}

@freezed
abstract class ReviewResultModel with _$ReviewResultModel {
  const factory ReviewResultModel({
    @nullable @required String author,
    @nullable @required String content,
    @nullable @required String url,
  }) = _ReviewResultModel;

  factory ReviewResultModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewResultModelFromJson(json);
}

extension ReviewResultModelX on ReviewResultModel {
  ReviewResult toReviewResult() {
    return ReviewResult(
      author: author,
      content: content,
      url: url,
    );
  }
}
