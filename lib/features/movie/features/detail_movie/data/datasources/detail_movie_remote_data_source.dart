import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../../../../../core/api_key.dart';
import '../../../../../../core/error/exception.dart';
import '../models/detail_movie_model.dart';

abstract class DetailMovieRemoteDataSource {
  Future<DetailMovieModel> getDetailMovie({@required int id});
}

class DetailMovieRemoteDataSourceImpl implements DetailMovieRemoteDataSource {
  final Dio _dio;

  DetailMovieRemoteDataSourceImpl(this._dio);

  @override
  Future<DetailMovieModel> getDetailMovie({
    @required int id,
  }) async {
    try {
      final response = await _dio.get(
        '$id?api_key=$API_KEY&append_to_response=videos,images,similar,credits,reviews',
      );
      return DetailMovieModel.fromJson(response.data);
    } on DioError {
      throw ServerException();
    }
  }
}
