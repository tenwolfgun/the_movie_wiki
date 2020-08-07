import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:the_movie_wiki/core/error/exception.dart';
import 'package:the_movie_wiki/core/error/failure.dart';
import 'package:the_movie_wiki/core/network/network_info.dart';
import 'package:the_movie_wiki/features/tv_show/features/discover_tv_show/data/datasources/discover_tv_show_remote_data_source.dart';
import 'package:the_movie_wiki/features/tv_show/features/discover_tv_show/data/models/discover_tv_show_model.dart';
import 'package:the_movie_wiki/features/tv_show/features/discover_tv_show/data/repositories/discover_tv_show_repoitory_impl.dart';

import '../../../../../../fixtures/fixture_reader.dart';

class MockRemoteDataSource extends Mock
    implements DiscoverTvShowRemoteDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  DiscoverTvShowRepositoryImpl repositoryImpl;
  MockRemoteDataSource mockRemoteDataSource;
  MockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockRemoteDataSource = MockRemoteDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repositoryImpl = DiscoverTvShowRepositoryImpl(
      mockRemoteDataSource,
      mockNetworkInfo,
    );
  });

  void runTestOnline(Function body) {
    group('device is online', () {
      setUp(() {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      });
      body();
    });
  }

  void runTestOffline(Function body) {
    group('device is offline', () {
      setUp(() {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
      });
      body();
    });
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
      fixture('discover_tv_show.json'),
    );

    final tDiscoverTvShowModel = DiscoverTvShowModel.fromJson(jsonMap);
    final tDiscoverTvShow = tDiscoverTvShowModel.toDomain();
    final tDiscvoerTvShowModelEmptyResult =
        DiscoverTvShowModel.fromJson(jsonData);

    test(
      'should check if device is online',
      () async {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);

        repositoryImpl.getDiscoverTvShowData(type: tType, page: tPage);

        verify(mockNetworkInfo.isConnected);
      },
    );

    runTestOnline(() {
      test(
        'should return remote data when the call to remote data source is successful',
        () async {
          when(mockRemoteDataSource.getDiscoverTvShowData(
            type: anyNamed('type'),
            page: anyNamed('page'),
          )).thenAnswer((_) async => tDiscoverTvShowModel);

          final result = await repositoryImpl.getDiscoverTvShowData(
            type: tType,
            page: tPage,
          );

          verify(mockRemoteDataSource.getDiscoverTvShowData(
            type: tType,
            page: tPage,
          ));

          expect(result, equals(right(tDiscoverTvShow)));
        },
      );

      test(
        'should return server error when the call to remote data is unsuccessful',
        () async {
          when(mockRemoteDataSource.getDiscoverTvShowData(
            type: anyNamed('type'),
            page: anyNamed('page'),
          )).thenThrow(ServerException());

          final result = await repositoryImpl.getDiscoverTvShowData(
            type: tType,
            page: tPage,
          );

          verify(mockRemoteDataSource.getDiscoverTvShowData(
            type: tType,
            page: tPage,
          ));
          expect(result, equals(left(const Failure.serverError())));
        },
      );

      test(
        'should return unexpected when data is null',
        () async {
          when(mockRemoteDataSource.getDiscoverTvShowData(
            type: anyNamed('type'),
            page: anyNamed('page'),
          )).thenAnswer((_) async => null);

          final result = await repositoryImpl.getDiscoverTvShowData(
            type: tType,
            page: tPage,
          );

          verify(mockRemoteDataSource.getDiscoverTvShowData(
            type: tType,
            page: tPage,
          ));
          expect(result, equals(left(const Failure.unexpected())));
        },
      );

      test(
        'should return empty result when result is empty',
        () async {
          when(mockRemoteDataSource.getDiscoverTvShowData(
            type: anyNamed('type'),
            page: anyNamed('page'),
          )).thenAnswer((_) async => tDiscvoerTvShowModelEmptyResult);

          final result = await repositoryImpl.getDiscoverTvShowData(
            type: tType,
            page: tPage,
          );

          verify(mockRemoteDataSource.getDiscoverTvShowData(
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
          final result = await repositoryImpl.getDiscoverTvShowData(
            type: tType,
            page: tPage,
          );
          expect(result, equals(left(const Failure.noInternetConnection())));
        },
      );
    });
  });
}
