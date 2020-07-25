import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:the_movie_wiki/features/movie/features/discover_movie/data/models/discover_movie_model.dart';

import '../../../../../../fixtures/fixture_reader.dart';

void main() {
  final jsonData = {
    "results": [
      {
        "popularity": 77.328,
        "vote_count": 183,
        "poster_path": "/hPkqY2EMqWUnFEoedukilIUieVG.jpg",
        "id": 531876,
        "title": "The Outpost",
        "vote_average": 6.9,
        "overview":
            "A small unit of U.S. soldiers, alone at the remote Combat Outpost Keating, located deep in the valley of three mountains in Afghanistan, battles to defend against an overwhelming force of Taliban fighters in a coordinated attack. The Battle of Kamdesh, as it was known, was the bloodiest American engagement of the Afghan War in 2009 and Bravo Troop 3-61 CAV became one of the most decorated units of the 19-year conflict.",
        "release_date": "2020-06-24"
      },
      {
        "popularity": 73.2,
        "vote_count": 4,
        "poster_path": "/27eA9xGba61LtKr7gJRnhtDDgEP.jpg",
        "id": 651586,
        "title": "Superagente Makey",
        "vote_average": 5,
        "overview":
            "Makey is a humble police officer that, unexpectedly, gets caught in the middle of a dangerous international drug operation in the Costa del Sol, Spain.",
        "release_date": "2020-07-17"
      }
    ],
    "page": 1,
    "total_results": 597,
    "total_pages": 30
  };

  final tDiscoverMovieModel = DiscoverMovieModel.fromJson(jsonData);
  final tDiscoverMovie = tDiscoverMovieModel.toDomain();

  test(
    'should return a valid model',
    () async {
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('discover_movie.json'));

      final result = DiscoverMovieModel.fromJson(jsonMap);

      expect(result, tDiscoverMovieModel);
    },
  );

  test(
    'should converted model to entity',
    () async {
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('discover_movie.json'));

      final result = DiscoverMovieModel.fromJson(jsonMap);
      final domain = result.toDomain();

      expect(domain, tDiscoverMovie);
    },
  );

  test(
    'should return a JSON map containing the proper data',
    () async {
      final result = tDiscoverMovieModel.toJson();
      final expected = jsonData;
      expect(result, expected);
    },
  );
}
