import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/api_key.dart';
import '../../../../../../core/error/exception.dart';
import '../models/discover_movie_model.dart';

abstract class DiscoverMovieRemoteDataSource {
  Future<DiscoverMovieModel> getDiscoverMovieData({String type, int page});
}

@LazySingleton(as: DiscoverMovieRemoteDataSource)
class DiscoverMovieRemoteDataSourceImpl
    implements DiscoverMovieRemoteDataSource {
  final Dio dio;

  DiscoverMovieRemoteDataSourceImpl(this.dio);

  @override
  Future<DiscoverMovieModel> getDiscoverMovieData({
    @required String type,
    @required int page,
  }) async {
    try {
      final response = await dio.get(
        '$type?api_key=$API_KEY&page=$page',
      );
      return DiscoverMovieModel.fromJson(json.decode(response.data));
    } on DioError catch (e) {
      if (e.response.statusCode != 200) {
        throw ServerException();
      } else {
        throw UnexpectedException();
      }
    }
  }
}
