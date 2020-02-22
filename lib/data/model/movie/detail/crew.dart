library crew;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'crew.g.dart';

abstract class Crew implements Built<Crew, CrewBuilder> {
  @nullable
  double get id;
  @nullable
  String get department;
  @nullable
  String get name;
  @nullable
  String get job;
  @nullable
  @BuiltValueField(wireName: 'profile_path')
  String get profilePath;

  Crew._();

  factory Crew([updates(CrewBuilder b)]) = _$Crew;

  String toJson() {
    return json.encode(serializers.serializeWith(Crew.serializer, this));
  }

  static Crew fromJson(String jsonString) {
    return serializers.deserializeWith(
        Crew.serializer, json.decode(jsonString));
  }

  static Serializer<Crew> get serializer => _$crewSerializer;
}
