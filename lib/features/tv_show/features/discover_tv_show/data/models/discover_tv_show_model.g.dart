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
            : TvShowResultModel.fromJson(e as Map<String, dynamic>))
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
