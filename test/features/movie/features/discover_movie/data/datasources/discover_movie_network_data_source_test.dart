import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:the_movie_wiki/core/api_key.dart';
import 'package:the_movie_wiki/core/error/exception.dart';
import 'package:the_movie_wiki/features/movie/features/discover_movie/data/datasources/disover_movie_remote_dart_source.dart';
import 'package:the_movie_wiki/features/movie/features/discover_movie/data/models/discover_movie_model.dart';

import '../../../../../../fixtures/fixture_reader.dart';

class MockDio extends Mock implements Dio {}

void main() {
  DiscoverMovieRemoteDataSourceImpl dataSource;
  MockDio mockDio;

  setUp(() {
    mockDio = MockDio();
    dataSource = DiscoverMovieRemoteDataSourceImpl(mockDio);
  });

  void setUpMockDioSuccess() {
    when(mockDio.get(any)).thenAnswer(
      (_) async => Response(
        data: fixture('discover_movie.json'),
        statusCode: 200,
      ),
    );
  }

  void setUpMockDioFailure() {
    when(mockDio.get(any)).thenThrow(ServerException());
  }

  group(
    'Get Discover Movie',
    () {
      final Map<String, dynamic> jsonMap = json.decode(
        fixture(
          'discover_movie.json',
        ),
      );

      final tDiscoverMovieModel = DiscoverMovieModel.fromJson(jsonMap);
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
        'should return ServerException',
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
