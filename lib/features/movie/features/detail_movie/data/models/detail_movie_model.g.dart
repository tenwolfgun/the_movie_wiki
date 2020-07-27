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

_$_GenreModel _$_$_GenreModelFromJson(Map<String, dynamic> json) {
  return _$_GenreModel(
    id: json['id'] as int,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$_$_GenreModelToJson(_$_GenreModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_ProductionCompaniesModel _$_$_ProductionCompaniesModelFromJson(
    Map<String, dynamic> json) {
  return _$_ProductionCompaniesModel(
    id: json['id'] as int,
    logoPath: json['logo_path'] as String,
    name: json['name'] as String,
    originCountry: json['origin_country'] as String,
  );
}

Map<String, dynamic> _$_$_ProductionCompaniesModelToJson(
        _$_ProductionCompaniesModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logo_path': instance.logoPath,
      'name': instance.name,
      'origin_country': instance.originCountry,
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

_$_VideosModel _$_$_VideosModelFromJson(Map<String, dynamic> json) {
  return _$_VideosModel(
    results: (json['results'] as List)
        ?.map((e) => e == null
            ? null
            : VideoResultModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_VideosModelToJson(_$_VideosModel instance) =>
    <String, dynamic>{
      'results': instance.results?.map((e) => e?.toJson())?.toList(),
    };

_$_VideoResultModel _$_$_VideoResultModelFromJson(Map<String, dynamic> json) {
  return _$_VideoResultModel(
    id: json['id'] as String,
    key: json['key'] as String,
    name: json['name'] as String,
    site: json['site'] as String,
    size: (json['size'] as num)?.toDouble(),
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$_$_VideoResultModelToJson(
        _$_VideoResultModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'name': instance.name,
      'site': instance.site,
      'size': instance.size,
      'type': instance.type,
    };

_$_SimilarMoviesModel _$_$_SimilarMoviesModelFromJson(
    Map<String, dynamic> json) {
  return _$_SimilarMoviesModel(
    results: (json['results'] as List)
        ?.map((e) =>
            e == null ? null : ResultModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_SimilarMoviesModelToJson(
        _$_SimilarMoviesModel instance) =>
    <String, dynamic>{
      'results': instance.results?.map((e) => e?.toJson())?.toList(),
    };

_$_CreditsModel _$_$_CreditsModelFromJson(Map<String, dynamic> json) {
  return _$_CreditsModel(
    cast: (json['cast'] as List)
        ?.map((e) =>
            e == null ? null : CastModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_CreditsModelToJson(_$_CreditsModel instance) =>
    <String, dynamic>{
      'cast': instance.cast?.map((e) => e?.toJson())?.toList(),
    };

_$_CastModel _$_$_CastModelFromJson(Map<String, dynamic> json) {
  return _$_CastModel(
    id: json['id'] as int,
    character: json['character'] as String,
    name: json['name'] as String,
    profilePath: json['profile_path'] as String,
  );
}

Map<String, dynamic> _$_$_CastModelToJson(_$_CastModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'character': instance.character,
      'name': instance.name,
      'profile_path': instance.profilePath,
    };

_$_ImagesModel _$_$_ImagesModelFromJson(Map<String, dynamic> json) {
  return _$_ImagesModel(
    backdrops: (json['backdrops'] as List)
        ?.map((e) => e == null
            ? null
            : BackdropsModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    posters: (json['posters'] as List)
        ?.map((e) =>
            e == null ? null : PostersModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ImagesModelToJson(_$_ImagesModel instance) =>
    <String, dynamic>{
      'backdrops': instance.backdrops?.map((e) => e?.toJson())?.toList(),
      'posters': instance.posters?.map((e) => e?.toJson())?.toList(),
    };

_$_BackdropsModel _$_$_BackdropsModelFromJson(Map<String, dynamic> json) {
  return _$_BackdropsModel(
    filePath: json['file_path'] as String,
    height: (json['height'] as num)?.toDouble(),
    width: (json['width'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_BackdropsModelToJson(_$_BackdropsModel instance) =>
    <String, dynamic>{
      'file_path': instance.filePath,
      'height': instance.height,
      'width': instance.width,
    };

_$_PostersModel _$_$_PostersModelFromJson(Map<String, dynamic> json) {
  return _$_PostersModel(
    filePath: json['file_path'] as String,
    height: (json['height'] as num)?.toDouble(),
    width: (json['width'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_PostersModelToJson(_$_PostersModel instance) =>
    <String, dynamic>{
      'file_path': instance.filePath,
      'height': instance.height,
      'width': instance.width,
    };

_$_ReviewsModel _$_$_ReviewsModelFromJson(Map<String, dynamic> json) {
  return _$_ReviewsModel(
    results: (json['results'] as List)
        ?.map((e) => e == null
            ? null
            : ReviewResultModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ReviewsModelToJson(_$_ReviewsModel instance) =>
    <String, dynamic>{
      'results': instance.results?.map((e) => e?.toJson())?.toList(),
    };

_$_ReviewResultModel _$_$_ReviewResultModelFromJson(Map<String, dynamic> json) {
  return _$_ReviewResultModel(
    author: json['author'] as String,
    content: json['content'] as String,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$_$_ReviewResultModelToJson(
        _$_ReviewResultModel instance) =>
    <String, dynamic>{
      'author': instance.author,
      'content': instance.content,
      'url': instance.url,
    };
