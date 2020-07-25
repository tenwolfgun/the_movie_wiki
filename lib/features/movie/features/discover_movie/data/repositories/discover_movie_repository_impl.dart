import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/error/exception.dart';
import '../../../../../../core/error/failure.dart';
import '../../../../../../core/network/network_info.dart';
import '../../domain/entities/discover_movie.dart';
import '../../domain/repositories/discover_movie_repository.dart';
import '../datasources/disover_movie_remote_dart_source.dart';
import '../models/discover_movie_model.dart';

@LazySingleton(as: DiscoverMovieRepository)
class DiscoverMovieRepositoryImpl implements DiscoverMovieRepository {
  final DiscoverMovieRemoteDataSource _dataSource;
  final NetworkInfo _networkInfo;

  const DiscoverMovieRepositoryImpl(this._dataSource, this._networkInfo);

  @override
  Future<Either<Failure, DiscoverMovie>> getDiscoverMovieData({
    @required String type,
    @required int page,
  }) async {
    if (await _networkInfo.isConnected) {
      try {
        final result = await _dataSource.getDiscoverMovieData(
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
