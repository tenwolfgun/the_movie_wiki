library people_result;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/model/common/known_for.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'people_result.g.dart';

abstract class PeopleResult
    implements Built<PeopleResult, PeopleResultBuilder> {
  @nullable
  double get gender;
  @nullable
  String get name;
  @nullable
  double get id;
  @nullable
  @BuiltValueField(wireName: 'profile_path')
  String get profilePath;
  @BuiltValueField(wireName: 'known_for')
  BuiltList<KnownFor> get knownFor;
  @nullable
  double get popularity;
  @nullable
  @BuiltValueField(wireName: 'known_for_department')
  String get knownForDepartement;

  PeopleResult._();

  factory PeopleResult([updates(PeopleResultBuilder b)]) = _$PeopleResult;

  String toJson() {
    return json
        .encode(serializers.serializeWith(PeopleResult.serializer, this));
  }

  static PeopleResult fromJson(String jsonString) {
    return serializers.deserializeWith(
        PeopleResult.serializer, json.decode(jsonString));
  }

  static Serializer<PeopleResult> get serializer => _$peopleResultSerializer;
}
