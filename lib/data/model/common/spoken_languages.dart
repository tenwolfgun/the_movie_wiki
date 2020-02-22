library spoken_languages;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'spoken_languages.g.dart';

abstract class SpokenLanguages
    implements Built<SpokenLanguages, SpokenLanguagesBuilder> {
  @nullable
  @BuiltValueField(wireName: 'iso_639_1')
  String get isoLanguage;
  @nullable
  String get name;

  SpokenLanguages._();

  factory SpokenLanguages([updates(SpokenLanguagesBuilder b)]) =
      _$SpokenLanguages;

  String toJson() {
    return json
        .encode(serializers.serializeWith(SpokenLanguages.serializer, this));
  }

  static SpokenLanguages fromJson(String jsonString) {
    return serializers.deserializeWith(
        SpokenLanguages.serializer, json.decode(jsonString));
  }

  static Serializer<SpokenLanguages> get serializer =>
      _$spokenLanguagesSerializer;
}
