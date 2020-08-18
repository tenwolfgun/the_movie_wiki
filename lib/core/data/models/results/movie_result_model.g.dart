// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieResultModel _$_$_MovieResultModelFromJson(Map<String, dynamic> json) {
  return _$_MovieResultModel(
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

Map<String, dynamic> _$_$_MovieResultModelToJson(
        _$_MovieResultModel instance) =>
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
