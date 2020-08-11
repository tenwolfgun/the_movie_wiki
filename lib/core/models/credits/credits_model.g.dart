// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credits_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
