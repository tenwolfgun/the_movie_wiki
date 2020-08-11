// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailMovieModel _$_$_DetailMovieModelFromJson(Map<String, dynamic> json) {
  return _$_DetailMovieModel(
    budget: (json['budget'] as num)?.toDouble(),
    genres: (json['genres'] as List)
        ?.map((e) =>
            e == null ? null : GenreModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    homepage: json['homepage'] as String,
    imdbId: json['imdb_id'] as String,
    originalLanguage: json['original_language'] as String,
    originalTitle: json['original_title'] as String,
    popularity: (json['popularity'] as num)?.toDouble(),
    productionCompanies: (json['production_companies'] as List)
        ?.map((e) => e == null
            ? null
            : ProductionCompaniesModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    productionCountries: (json['production_countries'] as List)
        ?.map((e) => e == null
            ? null
            : ProductionCountriesModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    revenue: (json['revenue'] as num)?.toDouble(),
    runtime: (json['runtime'] as num)?.toDouble(),
    status: json['status'] as String,
    tagline: json['tagline'] as String,
    videos: json['videos'] == null
        ? null
        : VideosModel.fromJson(json['videos'] as Map<String, dynamic>),
    similar: json['similar'] == null
        ? null
        : SimilarMoviesModel.fromJson(json['similar'] as Map<String, dynamic>),
    credits: json['credits'] == null
        ? null
        : CreditsModel.fromJson(json['credits'] as Map<String, dynamic>),
    images: json['images'] == null
        ? null
        : ImagesModel.fromJson(json['images'] as Map<String, dynamic>),
    reviews: json['reviews'] == null
        ? null
        : ReviewsModel.fromJson(json['reviews'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_DetailMovieModelToJson(
        _$_DetailMovieModel instance) =>
    <String, dynamic>{
      'budget': instance.budget,
      'genres': instance.genres?.map((e) => e?.toJson())?.toList(),
      'homepage': instance.homepage,
      'imdb_id': instance.imdbId,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'popularity': instance.popularity,
      'production_companies':
          instance.productionCompanies?.map((e) => e?.toJson())?.toList(),
      'production_countries':
          instance.productionCountries?.map((e) => e?.toJson())?.toList(),
      'revenue': instance.revenue,
      'runtime': instance.runtime,
      'status': instance.status,
      'tagline': instance.tagline,
      'videos': instance.videos?.toJson(),
      'similar': instance.similar?.toJson(),
      'credits': instance.credits?.toJson(),
      'images': instance.images?.toJson(),
      'reviews': instance.reviews?.toJson(),
    };

_$_ProductionCountriesModel _$_$_ProductionCountriesModelFromJson(
    Map<String, dynamic> json) {
  return _$_ProductionCountriesModel(
    isoCountry: json['iso_3166_1'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$_$_ProductionCountriesModelToJson(
        _$_ProductionCountriesModel instance) =>
    <String, dynamic>{
      'iso_3166_1': instance.isoCountry,
      'name': instance.name,
    };

_$_SimilarMoviesModel _$_$_SimilarMoviesModelFromJson(
    Map<String, dynamic> json) {
  return _$_SimilarMoviesModel(
    results: (json['results'] as List)
        ?.map((e) => e == null
            ? null
            : MovieResultModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_SimilarMoviesModelToJson(
        _$_SimilarMoviesModel instance) =>
    <String, dynamic>{
      'results': instance.results?.map((e) => e?.toJson())?.toList(),
    };
