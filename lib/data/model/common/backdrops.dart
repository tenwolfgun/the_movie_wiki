library backdrops;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'backdrops.g.dart';

abstract class Backdrops implements Built<Backdrops, BackdropsBuilder> {
  @nullable
  @BuiltValueField(wireName: 'file_path')
  String get filePath;
  @nullable
  double get height;
  @nullable
  double get width;

  Backdrops._();

  factory Backdrops([updates(BackdropsBuilder b)]) = _$Backdrops;

  String toJson() {
    return json.encode(serializers.serializeWith(Backdrops.serializer, this));
  }

  static Backdrops fromJson(String jsonString) {
    return serializers.deserializeWith(
        Backdrops.serializer, json.decode(jsonString));
  }

  static Serializer<Backdrops> get serializer => _$backdropsSerializer;
}
