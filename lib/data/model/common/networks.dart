library networks;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_movie_wiki/data/serializer/serializers.dart';

part 'networks.g.dart';

abstract class Networks implements Built<Networks, NetworksBuilder> {
  @nullable
  String get name;
  @nullable
  double get id;
  @nullable
  @BuiltValueField(wireName: 'logo_path')
  String get logoPath;
  @nullable
  @BuiltValueField(wireName: 'origin_country')
  String get originCountry;

  Networks._();

  factory Networks([updates(NetworksBuilder b)]) = _$Networks;

  String toJson() {
    return json.encode(serializers.serializeWith(Networks.serializer, this));
  }

  static Networks fromJson(String jsonString) {
    return serializers.deserializeWith(
        Networks.serializer, json.decode(jsonString));
  }

  static Serializer<Networks> get serializer => _$networksSerializer;
}
