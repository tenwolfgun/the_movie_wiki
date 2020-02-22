library credits;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/model/movie/detail/cast.dart';
import 'package:the_movie_wiki/data/model/movie/detail/crew.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'credits.g.dart';

abstract class Credits implements Built<Credits, CreditsBuilder> {
  @nullable
  BuiltList<Cast> get cast;
  BuiltList<Crew> get crew;

  Credits._();

  factory Credits([updates(CreditsBuilder b)]) = _$Credits;

  String toJson() {
    return json.encode(serializers.serializeWith(Credits.serializer, this));
  }

  static Credits fromJson(String jsonString) {
    return serializers.deserializeWith(
        Credits.serializer, json.decode(jsonString));
  }

  static Serializer<Credits> get serializer => _$creditsSerializer;
}
