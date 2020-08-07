import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/error/exception.dart';
import '../../../../../../core/error/failure.dart';
import '../../../../../../core/network/network_info.dart';
import '../../domain/entities/discover_tv_show.dart';
import '../../domain/repositories/discover_tv_show_repository.dart';
import '../datasources/discover_tv_show_remote_data_source.dart';
import '../models/discover_tv_show_model.dart';

@LazySingleton(as: DiscoverTvShowRepository)
class DiscoverTvShowRepositoryImpl implements DiscoverTvShowRepository {
  final DiscoverTvShowRemoteDataSource _dataSource;
  final NetworkInfo _networkInfo;

  DiscoverTvShowRepositoryImpl(this._dataSource, this._networkInfo);

  @override
  Future<Either<Failure, DiscoverTvShow>> getDiscoverTvShowData({
    @required String type,
    @required int page,
  }) async {
    if (await _networkInfo.isConnected) {
      try {
        final result = await _dataSource.getDiscoverTvShowData(
          type: type,
          page: page,
        );

        if (result == null) {
          return left(const Failure.unexpected());
        }

        if (result.results.isEmpty) {
          return Left(const Failure.emptyResult());
        }

        return right(result.toDomain());
      } on ServerException {
        return left(const Failure.serverError());
      }
    } else {
      return left(const Failure.noInternetConnection());
    }
  }
}
