// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discover_tv_show_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DiscoverTvShowModel _$_$_DiscoverTvShowModelFromJson(
    Map<String, dynamic> json) {
  return _$_DiscoverTvShowModel(
    results: (json['results'] as List)
        ?.map((e) => e == null
            ? null
            : DiscoverTvShowResultModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    page: json['page'] as int,
    totalResults: json['total_results'] as int,
    totalPages: json['total_pages'] as int,
  );
}

Map<String, dynamic> _$_$_DiscoverTvShowModelToJson(
        _$_DiscoverTvShowModel instance) =>
    <String, dynamic>{
      'results': instance.results?.map((e) => e?.toJson())?.toList(),
      'page': instance.page,
      'total_results': instance.totalResults,
      'total_pages': instance.totalPages,
    };

_$_DiscoverTvShowResultModel _$_$_DiscoverTvShowResultModelFromJson(
    Map<String, dynamic> json) {
  return _$_DiscoverTvShowResultModel(
    popularity: (json['popularity'] as num)?.toDouble(),
    voteCount: json['vote_count'] as int,
    posterPath: json['poster_path'] as String,
    id: json['id'] as int,
    name: json['name'] as String,
    voteAverage: (json['vote_average'] as num)?.toDouble(),
    overview: json['overview'] as String,
    firstAirDate: json['first_air_date'] as String,
  );
}

Map<String, dynamic> _$_$_DiscoverTvShowResultModelToJson(
        _$_DiscoverTvShowResultModel instance) =>
    <String, dynamic>{
      'popularity': instance.popularity,
      'vote_count': instance.voteCount,
      'poster_path': instance.posterPath,
      'id': instance.id,
      'name': instance.name,
      'vote_average': instance.voteAverage,
      'overview': instance.overview,
      'first_air_date': instance.firstAirDate,
    };
