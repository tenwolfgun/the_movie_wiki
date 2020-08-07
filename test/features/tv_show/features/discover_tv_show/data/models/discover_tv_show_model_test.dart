import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:the_movie_wiki/features/tv_show/features/discover_tv_show/data/models/discover_tv_show_model.dart';

import '../../../../../../fixtures/fixture_reader.dart';

void main() {
  final jsonData = {
    "page": 1,
    "total_results": 10000,
    "total_pages": 500,
    "results": [
      {
        "id": 2734,
        "name": "Law & Order: Special Victims Unit",
        "popularity": 212.414,
        "vote_count": 1463,
        "vote_average": 7.3,
        "first_air_date": "1999-09-20",
        "poster_path": "/6t6r1VGQTTQecN4V0sZeqsmdU9g.jpg",
        "overview":
            "In the criminal justice system, sexually-based offenses are considered especially heinous. In New York City, the dedicated detectives who investigate these vicious felonies are members of an elite squad known as the Special Victims Unit. These are their stories."
      },
      {
        "name": "Supernatural",
        "popularity": 204.801,
        "vote_count": 3437,
        "first_air_date": "2005-09-13",
        "id": 1622,
        "vote_average": 7.9,
        "overview":
            "When they were boys, Sam and Dean Winchester lost their mother to a mysterious and demonic supernatural force. Subsequently, their father raised them to be soldiers. He taught them about the paranormal evil that lives in the dark corners and on the back roads of America ... and he taught them how to kill it. Now, the Winchester brothers crisscross the country in their '67 Chevy Impala, battling every kind of supernatural threat they encounter along the way. ",
        "poster_path": "/KoYWXbnYuS3b0GyQPkbuexlVK9.jpg"
      }
    ]
  };

  final tDiscoverTvShowModel = DiscoverTvShowModel.fromJson(jsonData);
  final tDiscoverTvShow = tDiscoverTvShowModel.toDomain();

  test(
    'should return valid model',
    () async {
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('discover_tv_show.json'));

      final result = DiscoverTvShowModel.fromJson(jsonMap);

      expect(result, tDiscoverTvShowModel);
    },
  );

  test(
    'should converted model to entity',
    () async {
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('discover_tv_show.json'));

      final result = DiscoverTvShowModel.fromJson(jsonMap);
      final domain = result.toDomain();

      expect(domain, tDiscoverTvShow);
    },
  );

  test(
    'should return a JSON map containing the proper data',
    () async {
      final result = tDiscoverTvShowModel.toJson();
      final expected = jsonData;
      expect(result, expected);
    },
  );
}
