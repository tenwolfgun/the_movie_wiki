// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewsModel _$_$_ReviewsModelFromJson(Map<String, dynamic> json) {
  return _$_ReviewsModel(
    results: (json['results'] as List)
        ?.map((e) => e == null
            ? null
            : ReviewResultModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ReviewsModelToJson(_$_ReviewsModel instance) =>
    <String, dynamic>{
      'results': instance.results?.map((e) => e?.toJson())?.toList(),
    };

_$_ReviewResultModel _$_$_ReviewResultModelFromJson(Map<String, dynamic> json) {
  return _$_ReviewResultModel(
    author: json['author'] as String,
    content: json['content'] as String,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$_$_ReviewResultModelToJson(
        _$_ReviewResultModel instance) =>
    <String, dynamic>{
      'author': instance.author,
      'content': instance.content,
      'url': instance.url,
    };
