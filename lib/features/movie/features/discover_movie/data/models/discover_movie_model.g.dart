// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discover_movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DiscoverMovieModel _$_$_DiscoverMovieModelFromJson(
    Map<String, dynamic> json) {
  return _$_DiscoverMovieModel(
    results: (json['results'] as List)
        ?.map((e) =>
            e == null ? null : ResultModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    page: json['page'] as int,
    totalResults: json['total_results'] as int,
    totalPages: json['total_pages'] as int,
  );
}

Map<String, dynamic> _$_$_DiscoverMovieModelToJson(
        _$_DiscoverMovieModel instance) =>
    <String, dynamic>{
      'results': instance.results,
      'page': instance.page,
      'total_results': instance.totalResults,
      'total_pages': instance.totalPages,
    };

_$_ResultModel _$_$_ResultModelFromJson(Map<String, dynamic> json) {
  return _$_ResultModel(
    popularity: (json['popularity'] as num)?.toDouble(),
    voteCount: json['vote_count'] as int,
    posterPath: json['poster_path'] as String,
    id: json['id'] as int,
    title: json['title'] as String,
    voteAverage: (json['vote_average'] as num)?.toDouble(),
    overview: json['overview'] as String,
    releaseDate: json['release_date'] as String,
  );
}

Map<String, dynamic> _$_$_ResultModelToJson(_$_ResultModel instance) =>
    <String, dynamic>{
      'popularity': instance.popularity,
      'vote_count': instance.voteCount,
      'poster_path': instance.posterPath,
      'id': instance.id,
      'title': instance.title,
      'vote_average': instance.voteAverage,
      'overview': instance.overview,
      'release_date': instance.releaseDate,
    };
