library production_companies;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'production_companies.g.dart';

abstract class ProductionCompanies
    implements Built<ProductionCompanies, ProductionCompaniesBuilder> {
  @nullable
  double get id;
  @nullable
  @BuiltValueField(wireName: 'logo_path')
  String get logoPath;
  @nullable
  String get name;
  @nullable
  @BuiltValueField(wireName: 'origin_country')
  String get originCountry;

  ProductionCompanies._();

  factory ProductionCompanies([updates(ProductionCompaniesBuilder b)]) =
      _$ProductionCompanies;

  String toJson() {
    return json.encode(
        serializers.serializeWith(ProductionCompanies.serializer, this));
  }

  static ProductionCompanies fromJson(String jsonString) {
    return serializers.deserializeWith(
        ProductionCompanies.serializer, json.decode(jsonString));
  }

  static Serializer<ProductionCompanies> get serializer =>
      _$productionCompaniesSerializer;
}
