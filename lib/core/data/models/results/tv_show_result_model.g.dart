// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_show_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TvShowResultModel _$_$_TvShowResultModelFromJson(Map<String, dynamic> json) {
  return _$_TvShowResultModel(
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

Map<String, dynamic> _$_$_TvShowResultModelToJson(
        _$_TvShowResultModel instance) =>
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
