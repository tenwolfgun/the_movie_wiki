import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:the_movie_wiki/core/error/exception.dart';
import 'package:the_movie_wiki/core/error/failure.dart';
import 'package:the_movie_wiki/core/network/network_info.dart';
import 'package:the_movie_wiki/features/movie/features/discover_movie/data/datasources/disover_movie_remote_dart_source.dart';
import 'package:the_movie_wiki/features/movie/features/discover_movie/data/models/discover_movie_model.dart';
import 'package:the_movie_wiki/features/movie/features/discover_movie/data/repositories/discover_movie_repository_impl.dart';

import '../../../../../../fixtures/fixture_reader.dart';

class MockRemoteDataSource extends Mock
    implements DiscoverMovieRemoteDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  DiscoverMovieRepositoryImpl repositoryImpl;
  MockRemoteDataSource mockRemoteDataSource;
  MockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockRemoteDataSource = MockRemoteDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repositoryImpl = DiscoverMovieRepositoryImpl(
      mockRemoteDataSource,
      mockNetworkInfo,
    );
  });

  void runTestOnline(Function body) {
    group(
      'device is online',
      () {
        setUp(
          () {
            when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
          },
        );
        body();
      },
    );
  }

  void runTestOffline(Function body) {
    group(
      'device is offline',
      () {
        setUp(
          () {
            when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
          },
        );
        body();
      },
    );
  }

  group('getDiscoverMovieData', () {
    final tType = 'now_playing';
    final tPage = 1;

    final jsonData = {
      "results": [],
      "page": 1,
      "total_results": 597,
      "dates": {"maximum": "2020-07-20", "minimum": "2020-06-02"},
      "total_pages": 30
    };

    final Map<String, dynamic> jsonMap = json.decode(
      fixture('discover_movie.json'),
    );

    final tDiscoverMovieModel = DiscoverMovieModel.fromJson(jsonMap);
    final tDiscoverMovie = tDiscoverMovieModel.toDomain();
    final tDiscoverMovieModelEmptyResults =
        DiscoverMovieModel.fromJson(jsonData);

    test(
      'should check if device is online',
      () async {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);

        repositoryImpl.getDiscoverMovieData(type: tType, page: tPage);

        verify(mockNetworkInfo.isConnected);
      },
    );

    runTestOnline(
      () {
        test(
          'should return remote data when the call to remote data source is successful',
          () async {
            when(mockRemoteDataSource.getDiscoverMovieData(
              type: anyNamed('type'),
              page: anyNamed('page'),
            )).thenAnswer((_) async => tDiscoverMovieModel);

            final result = await repositoryImpl.getDiscoverMovieData(
              type: tType,
              page: tPage,
            );

            verify(mockRemoteDataSource.getDiscoverMovieData(
              type: tType,
              page: tPage,
            ));
            expect(result, equals(right(tDiscoverMovie)));
          },
        );

        test(
          'should return server error when the call to remote data is unsuccessful',
          () async {
            when(mockRemoteDataSource.getDiscoverMovieData(
              type: anyNamed('type'),
              page: anyNamed('page'),
            )).thenThrow(ServerException());

            final result = await repositoryImpl.getDiscoverMovieData(
              type: tType,
              page: tPage,
            );

            verify(mockRemoteDataSource.getDiscoverMovieData(
              type: tType,
              page: tPage,
            ));
            expect(result, equals(left(const Failure.serverError())));
          },
        );

        test(
          'should return unexpected',
          () async {
            when(mockRemoteDataSource.getDiscoverMovieData(
              type: anyNamed('type'),
              page: anyNamed('page'),
            )).thenThrow(UnexpectedException());

            final result = await repositoryImpl.getDiscoverMovieData(
              type: tType,
              page: tPage,
            );

            verify(mockRemoteDataSource.getDiscoverMovieData(
              type: tType,
              page: tPage,
            ));
            expect(result, equals(left(const Failure.unexpected())));
          },
        );

        test(
          'should return unexpected when data is null',
          () async {
            when(mockRemoteDataSource.getDiscoverMovieData(
              type: anyNamed('type'),
              page: anyNamed('page'),
            )).thenAnswer((_) async => null);

            final result = await repositoryImpl.getDiscoverMovieData(
              type: tType,
              page: tPage,
            );

            verify(mockRemoteDataSource.getDiscoverMovieData(
              type: tType,
              page: tPage,
            ));
            expect(result, equals(left(const Failure.unexpected())));
          },
        );

        runTestOnline(() {
          test(
            'should return empty result when result is empty',
            () async {
              when(mockRemoteDataSource.getDiscoverMovieData(
                type: anyNamed('type'),
                page: anyNamed('page'),
              )).thenAnswer((_) async => tDiscoverMovieModelEmptyResults);

              final result = await repositoryImpl.getDiscoverMovieData(
                type: tType,
                page: tPage,
              );

              verify(mockRemoteDataSource.getDiscoverMovieData(
                type: tType,
                page: tPage,
              ));
              expect(result, equals(left(const Failure.emptyResult())));
            },
          );
        });

        runTestOffline(() {
          test(
            'should return no internet connection',
            () async {
              final result = await repositoryImpl.getDiscoverMovieData(
                type: tType,
                page: tPage,
              );
              expect(
                  result, equals(left(const Failure.noInternetConnection())));
            },
          );
        });
      },
    );
  });
}
