import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:the_movie_wiki/core/error/exception.dart';
import 'package:the_movie_wiki/core/error/failure.dart';
import 'package:the_movie_wiki/core/network/network_info.dart';
import 'package:the_movie_wiki/features/movie/features/detail_movie/data/datasources/detail_movie_remote_data_source.dart';
import 'package:the_movie_wiki/features/movie/features/detail_movie/data/models/detail_movie_model.dart';
import 'package:the_movie_wiki/features/movie/features/detail_movie/data/repositories/detail_movie_repository_impl.dart';

import '../../../../../../fixtures/detail_movie_response.dart';

class MockRemoteDataSource extends Mock implements DetailMovieRemoteDataSource {
}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  DetailMovieRepositoryImpl repositoryImpl;
  MockRemoteDataSource mockRemoteDataSource;
  MockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockRemoteDataSource = MockRemoteDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repositoryImpl = DetailMovieRepositoryImpl(
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

  group(
    'Get Detail Movie',
    () {
      final tId = 1;

      final tDetailMovieModel = DetailMovieModel.fromJson(jsonData);
      final tDetailMovie = tDetailMovieModel.toDetailMovie();

      test(
        'should check if device is online',
        () async {
          when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);

          repositoryImpl.getDetailMovie(id: tId);

          verify(mockNetworkInfo.isConnected);
        },
      );

      runTestOnline(
        () {
          test(
            'shuld return remote data when the call to remoted ata source is successful',
            () async {
              when(mockRemoteDataSource.getDetailMovie(
                id: anyNamed('id'),
              )).thenAnswer(
                (_) async => tDetailMovieModel,
              );

              final result = await repositoryImpl.getDetailMovie(id: tId);

              verify(
                mockRemoteDataSource.getDetailMovie(id: tId),
              );

              expect(result, equals(right(tDetailMovie)));
            },
          );

          test(
            'should return server error',
            () async {
              when(mockRemoteDataSource.getDetailMovie(
                id: anyNamed('id'),
              )).thenThrow(ServerException());

              final result = await repositoryImpl.getDetailMovie(id: tId);

              verify(
                mockRemoteDataSource.getDetailMovie(id: tId),
              );
              expect(result, equals(left(const Failure.serverError())));
            },
          );

          test(
            'should return empty result error',
            () async {
              when(mockRemoteDataSource.getDetailMovie(
                id: anyNamed('id'),
              )).thenThrow(EmptyResultException());

              final result = await repositoryImpl.getDetailMovie(id: tId);

              verify(
                mockRemoteDataSource.getDetailMovie(id: tId),
              );
              expect(result, equals(left(const Failure.emptyResult())));
            },
          );

          test(
            'should return unexpected',
            () async {
              when(mockRemoteDataSource.getDetailMovie(
                id: anyNamed('id'),
              )).thenAnswer((_) async => null);

              final result = await repositoryImpl.getDetailMovie(id: tId);

              verify(
                mockRemoteDataSource.getDetailMovie(id: tId),
              );
              expect(result, equals(left(const Failure.unexpected())));
            },
          );
        },
      );

      runTestOffline(
        () {
          test(
            'should return no internet connection',
            () async {
              final result = await repositoryImpl.getDetailMovie(id: tId);
              expect(
                  result, equals(left(const Failure.noInternetConnection())));
            },
          );
        },
      );
    },
  );
}
