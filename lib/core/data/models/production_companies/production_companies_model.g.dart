// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'production_companies_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
