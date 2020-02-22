library images;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/model/common/posters.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

import 'backdrops.dart';

part 'images.g.dart';

abstract class Images implements Built<Images, ImagesBuilder> {
  @nullable
  BuiltList<Backdrops> get backdrops;
  @nullable
  BuiltList<Posters> get posters;

  Images._();

  factory Images([updates(ImagesBuilder b)]) = _$Images;

  String toJson() {
    return json.encode(serializers.serializeWith(Images.serializer, this));
  }

  static Images fromJson(String jsonString) {
    return serializers.deserializeWith(
        Images.serializer, json.decode(jsonString));
  }

  static Serializer<Images> get serializer => _$imagesSerializer;
}
