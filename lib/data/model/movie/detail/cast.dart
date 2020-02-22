library cast;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'cast.g.dart';

abstract class Cast implements Built<Cast, CastBuilder> {
  @nullable
  double get id;
  @nullable
  String get character;
  @nullable
  String get name;
  @nullable
  @BuiltValueField(wireName: 'profile_path')
  String get profilePath;

  Cast._();

  factory Cast([updates(CastBuilder b)]) = _$Cast;

  String toJson() {
    return json.encode(serializers.serializeWith(Cast.serializer, this));
  }

  static Cast fromJson(String jsonString) {
    return serializers.deserializeWith(
        Cast.serializer, json.decode(jsonString));
  }

  static Serializer<Cast> get serializer => _$castSerializer;
}
