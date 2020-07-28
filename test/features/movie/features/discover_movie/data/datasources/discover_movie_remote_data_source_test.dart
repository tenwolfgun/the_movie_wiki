import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:the_movie_wiki/core/api_key.dart';
import 'package:the_movie_wiki/core/error/exception.dart';
import 'package:the_movie_wiki/features/movie/features/discover_movie/data/datasources/disover_movie_remote_dart_source.dart';
import 'package:the_movie_wiki/features/movie/features/discover_movie/data/models/discover_movie_model.dart';

class MockDio extends Mock implements Dio {}

void main() {
  DiscoverMovieRemoteDataSourceImpl dataSource;
  MockDio mockDio;

  final jsonData = {
    "results": [
      {
        "popularity": 77.328,
        "vote_count": 183,
        "video": false,
        "poster_path": "/hPkqY2EMqWUnFEoedukilIUieVG.jpg",
        "id": 531876,
        "adult": false,
        "backdrop_path": "/n1RohH2VoK1CdVI2fXvcP19dSlm.jpg",
        "original_language": "en",
        "original_title": "The Outpost",
        "genre_ids": [28, 18, 36, 10752],
        "title": "The Outpost",
        "vote_average": 6.9,
        "overview":
            "A small unit of U.S. soldiers, alone at the remote Combat Outpost Keating, located deep in the valley of three mountains in Afghanistan, battles to defend against an overwhelming force of Taliban fighters in a coordinated attack. The Battle of Kamdesh, as it was known, was the bloodiest American engagement of the Afghan War in 2009 and Bravo Troop 3-61 CAV became one of the most decorated units of the 19-year conflict.",
        "release_date": "2020-06-24"
      },
      {
        "popularity": 73.2,
        "vote_count": 4,
        "video": false,
        "poster_path": "/27eA9xGba61LtKr7gJRnhtDDgEP.jpg",
        "id": 651586,
        "adult": false,
        "backdrop_path": null,
        "original_language": "es",
        "original_title": "Superagente Makey",
        "genre_ids": [28, 35],
        "title": "Superagente Makey",
        "vote_average": 5,
        "overview":
            "Makey is a humble police officer that, unexpectedly, gets caught in the middle of a dangerous international drug operation in the Costa del Sol, Spain.",
        "release_date": "2020-07-17"
      }
    ],
    "page": 1,
    "total_results": 597,
    "dates": {"maximum": "2020-07-20", "minimum": "2020-06-02"},
    "total_pages": 30
  };

  setUp(() {
    mockDio = MockDio();
    dataSource = DiscoverMovieRemoteDataSourceImpl(mockDio);
  });

  void setUpMockDioSuccess() {
    when(mockDio.get(any)).thenAnswer(
      (_) async => Response(
        data: jsonData,
        statusCode: 200,
      ),
    );
  }

  void setUpMockDioFailure() {
    when(mockDio.get(any)).thenThrow(DioError());
  }

  group(
    'Get Discover Movie',
    () {
      // final Map<String, dynamic> jsonMap = json.decode(
      //   fixture(
      //     'discover_movie.json',
      //   ),
      // );

      final tDiscoverMovieModel = DiscoverMovieModel.fromJson(jsonData);
      final tPage = 1;
      final tType = 'now_playing';

      test(
        'should perform get request',
        () async {
          setUpMockDioSuccess();

          dataSource.getDiscoverMovieData(type: tType, page: tPage);

          verify(
            mockDio.get(
              '$tType?api_key=$API_KEY&page=$tPage',
            ),
          );
        },
      );

      test(
        'should return discover movie model',
        () async {
          setUpMockDioSuccess();

          final result = await dataSource.getDiscoverMovieData(
            type: tType,
            page: tPage,
          );

          expect(result, equals(tDiscoverMovieModel));
        },
      );

      test(
        'ServerException',
        () async {
          setUpMockDioFailure();

          final call = dataSource.getDiscoverMovieData;

          expect(
            () => call(type: tType, page: tPage),
            throwsA(isInstanceOf<ServerException>()),
          );
        },
      );
    },
  );
}
