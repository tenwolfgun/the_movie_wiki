// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discover_movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DiscoverMovieModel _$_$_DiscoverMovieModelFromJson(
    Map<String, dynamic> json) {
  return _$_DiscoverMovieModel(
    results: (json['results'] as List)
        ?.map((e) => e == null
            ? null
            : MovieResultModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    page: json['page'] as int,
    totalResults: json['total_results'] as int,
    totalPages: json['total_pages'] as int,
  );
}

Map<String, dynamic> _$_$_DiscoverMovieModelToJson(
        _$_DiscoverMovieModel instance) =>
    <String, dynamic>{
      'results': instance.results?.map((e) => e?.toJson())?.toList(),
      'page': instance.page,
      'total_results': instance.totalResults,
      'total_pages': instance.totalPages,
    };
