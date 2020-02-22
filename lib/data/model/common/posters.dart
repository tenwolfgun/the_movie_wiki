library posters;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'posters.g.dart';

abstract class Posters implements Built<Posters, PostersBuilder> {
  @nullable
  @BuiltValueField(wireName: 'file_path')
  String get filePath;
  @nullable
  double get height;
  @nullable
  double get width;

  Posters._();

  factory Posters([updates(PostersBuilder b)]) = _$Posters;

  String toJson() {
    return json.encode(serializers.serializeWith(Posters.serializer, this));
  }

  static Posters fromJson(String jsonString) {
    return serializers.deserializeWith(
        Posters.serializer, json.decode(jsonString));
  }

  static Serializer<Posters> get serializer => _$postersSerializer;
}
