library created_by;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'created_by.g.dart';

abstract class CreatedBy implements Built<CreatedBy, CreatedByBuilder> {
  @nullable
  int get id;
  @nullable
  String get name;
  @nullable
  @BuiltValueField(wireName: 'profile_path')
  String get profilePath;

  CreatedBy._();

  factory CreatedBy([updates(CreatedByBuilder b)]) = _$CreatedBy;

  String toJson() {
    return json.encode(serializers.serializeWith(CreatedBy.serializer, this));
  }

  static CreatedBy fromJson(String jsonString) {
    return serializers.deserializeWith(
        CreatedBy.serializer, json.decode(jsonString));
  }

  static Serializer<CreatedBy> get serializer => _$createdBySerializer;
}
