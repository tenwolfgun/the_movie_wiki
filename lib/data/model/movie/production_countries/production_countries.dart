library production_countries;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'production_countries.g.dart';

abstract class ProductionCountries
    implements Built<ProductionCountries, ProductionCountriesBuilder> {
  @nullable
  @BuiltValueField(wireName: 'iso_3166_1')
  String get isoCountry;
  @nullable
  String get name;

  ProductionCountries._();

  factory ProductionCountries([updates(ProductionCountriesBuilder b)]) =
      _$ProductionCountries;

  String toJson() {
    return json.encode(
        serializers.serializeWith(ProductionCountries.serializer, this));
  }

  static ProductionCountries fromJson(String jsonString) {
    return serializers.deserializeWith(
        ProductionCountries.serializer, json.decode(jsonString));
  }

  static Serializer<ProductionCountries> get serializer =>
      _$productionCountriesSerializer;
}
