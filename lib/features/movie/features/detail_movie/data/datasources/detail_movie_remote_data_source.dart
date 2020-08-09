import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/api_key.dart';
import '../../../../../../core/error/exception.dart';
import '../models/detail_movie_model.dart';

abstract class DetailMovieRemoteDataSource {
  Future<DetailMovieModel> getDetailMovie({@required int id});
}

@LazySingleton(as: DetailMovieRemoteDataSource)
class DetailMovieRemoteDataSourceImpl implements DetailMovieRemoteDataSource {
  final Dio _dio;

  DetailMovieRemoteDataSourceImpl(this._dio);

  @override
  Future<DetailMovieModel> getDetailMovie({
    @required int id,
  }) async {
    try {
      final response = await _dio.get(
        'movie/$id?api_key=$API_KEY&append_to_response=videos,images,similar,credits,reviews',
      );
      return DetailMovieModel.fromJson(response.data);
    } on DioError catch (e) {
      if (e.response.statusCode == 404) {
        throw const EmptyResultException();
      } else {
        throw ServerException();
      }
    }
  }
}
