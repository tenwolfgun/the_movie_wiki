library similar_tv;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/model/common/tv_show_result.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'similar_tv.g.dart';

abstract class SimilarTv implements Built<SimilarTv, SimilarTvBuilder> {
  @nullable
  BuiltList<TvShowResult> get results;

  SimilarTv._();

  factory SimilarTv([updates(SimilarTvBuilder b)]) = _$SimilarTv;

  String toJson() {
    return json.encode(serializers.serializeWith(SimilarTv.serializer, this));
  }

  static SimilarTv fromJson(String jsonString) {
    return serializers.deserializeWith(
        SimilarTv.serializer, json.decode(jsonString));
  }

  static Serializer<SimilarTv> get serializer => _$similarTvSerializer;
}
