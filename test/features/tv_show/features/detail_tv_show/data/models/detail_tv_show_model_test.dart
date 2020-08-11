import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:the_movie_wiki/features/tv_show/features/detail_tv_show/data/models/detail_tv_show_model.dart';

import '../../../../../../fixtures/detail_tv_show_response.dart';
import '../../../../../../fixtures/fixture_reader.dart';

void main() {
  final jsonResponse = detailTvShowJsonResponse;

  final tDetailTvShowModel = DetailTvShowModel.fromJson(jsonResponse);
  final tDetailTvShow = tDetailTvShowModel.toDomain();

  test(
    'should return a valid model',
    () async {
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('detail_tv_show.json'));

      final result = DetailTvShowModel.fromJson(jsonMap);

      expect(result, tDetailTvShowModel);
    },
  );

  test(
    'should convert model to entity',
    () async {
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('detail_tv_show.json'));

      final result = DetailTvShowModel.fromJson(jsonMap);
      final detailTvShow = result.toDomain();

      expect(detailTvShow, tDetailTvShow);
    },
  );

  test(
    'should return a JSON map containing the proper data',
    () async {
      final result = tDetailTvShowModel.toJson();
      final expected = jsonResponse;
      expect(result, expected);
    },
  );
}
