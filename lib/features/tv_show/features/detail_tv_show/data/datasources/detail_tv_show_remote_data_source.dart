import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/api_key.dart';
import '../../../../../../core/error/exception.dart';
import '../models/detail_tv_show_model.dart';

abstract class DetailTvShowRemotelDataSource {
  Future<DetailTvShowModel> getDetailTvShowData({@required int id});
}

@LazySingleton(as: DetailTvShowRemotelDataSource)
class DetailTvShowRemotelDataSourceImpl
    implements DetailTvShowRemotelDataSource {
  final Dio _dio;

  const DetailTvShowRemotelDataSourceImpl(this._dio);

  @override
  Future<DetailTvShowModel> getDetailTvShowData({
    int id,
  }) async {
    try {
      final response = await _dio.get(
        'tv/$id?api_key=$API_KEY&append_to_response=videos,images,similar,credits,reviews',
      );
      return DetailTvShowModel.fromJson(response.data);
    } on DioError catch (e) {
      if (e.response.statusCode == 404) {
        throw const EmptyResultException();
      } else {
        throw ServerException();
      }
    }
  }
}
