import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:the_movie_wiki/features/movie/features/detail_movie/data/models/detail_movie_model.dart';

import '../../../../../../fixtures/detail_movie_response.dart';
import '../../../../../../fixtures/fixture_reader.dart';

void main() {
  final jsonResponse = jsonData;

  final tDetailMovieModel = DetailMovieModel.fromJson(jsonResponse);
  final tDetailMovie = tDetailMovieModel.toDetailMovie();

  test(
    'should return a valid model',
    () async {
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('detail_movie.json'));

      final result = DetailMovieModel.fromJson(jsonMap);

      expect(result, tDetailMovieModel);
    },
  );

  test(
    'should convert model to entity',
    () async {
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('detail_movie.json'));

      final result = DetailMovieModel.fromJson(jsonMap);
      final detailMovie = result.toDetailMovie();

      expect(detailMovie, tDetailMovie);
    },
  );

  test(
    'should return a JSON map containing the proper data',
    () async {
      final result = tDetailMovieModel.toJson();
      final expected = jsonResponse;
      expect(result, expected);
    },
  );
}
