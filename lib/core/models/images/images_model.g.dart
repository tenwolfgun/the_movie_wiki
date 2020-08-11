// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
