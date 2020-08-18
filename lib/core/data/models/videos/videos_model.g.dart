// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'videos_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
