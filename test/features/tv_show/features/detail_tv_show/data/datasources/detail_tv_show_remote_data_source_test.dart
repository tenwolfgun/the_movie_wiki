import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:the_movie_wiki/core/api_key.dart';
import 'package:the_movie_wiki/core/error/exception.dart';
import 'package:the_movie_wiki/features/tv_show/features/detail_tv_show/data/datasources/detail_tv_show_remote_data_source.dart';
import 'package:the_movie_wiki/features/tv_show/features/detail_tv_show/data/models/detail_tv_show_model.dart';

import '../../../../../../fixtures/detail_tv_show_response.dart';

class MockDio extends Mock implements Dio {}

void main() {
  DetailTvShowRemotelDataSourceImpl dataSourceImpl;
  MockDio mockDio;

  final jsonResponse = detailTvShowJsonResponse;

  setUp(() {
    mockDio = MockDio();
    dataSourceImpl = DetailTvShowRemotelDataSourceImpl(mockDio);
  });

  void setUpMockDioSuccess() {
    when(mockDio.get(any)).thenAnswer(
      (_) async => Response(
        data: detailTvShowJsonResponse,
        statusCode: 200,
      ),
    );
  }

  void setUpMockDioFailure404() {
    when(mockDio.get(any)).thenThrow(
      DioError(
        response: Response(
          data: null,
          statusCode: 404,
        ),
        type: DioErrorType.RESPONSE,
      ),
    );
  }

  void setUpMockDioFailure() {
    when(mockDio.get(any)).thenThrow(
      DioError(
        response: Response(
          data: null,
          statusCode: 500,
        ),
        type: DioErrorType.DEFAULT,
      ),
    );
  }

  group('Get Detail TV Show data', () {
    final tDetailTvShowModel = DetailTvShowModel.fromJson(jsonResponse);
    final tId = 1;

    test(
      'should perform get request',
      () async {
        setUpMockDioSuccess();

        dataSourceImpl.getDetailTvShowData(id: tId);

        verify(mockDio.get(
          'tv/$tId?api_key=$API_KEY&append_to_response=videos,images,similar,credits,reviews',
        ));
      },
    );

    test(
      'should return detail movie model',
      () async {
        setUpMockDioSuccess();

        final result = await dataSourceImpl.getDetailTvShowData(id: tId);

        expect(result, equals(tDetailTvShowModel));
      },
    );

    test(
      'should throw ServerException',
      () async {
        setUpMockDioFailure();

        final call = dataSourceImpl.getDetailTvShowData;

        expect(() => call(id: tId), throwsA(isInstanceOf<ServerException>()));
      },
    );

    test(
      'should throw EmptyResultException',
      () async {
        setUpMockDioFailure404();

        final call = dataSourceImpl.getDetailTvShowData;

        expect(
          () => call(id: tId),
          throwsA(isInstanceOf<EmptyResultException>()),
        );
      },
    );
  });
}
