import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/error/exception.dart';
import '../../../../../../core/error/failure.dart';
import '../../../../../../core/network/network_info.dart';
import '../../domain/entities/detail_movie.dart';
import '../../domain/repositories/detail_movie_repository.dart';
import '../datasources/detail_movie_remote_data_source.dart';
import '../models/detail_movie_model.dart';

@LazySingleton(as: DetailMovieRepository)
class DetailMovieRepositoryImpl implements DetailMovieRepository {
  final DetailMovieRemoteDataSource _dataSource;
  final NetworkInfo _networkInfo;

  const DetailMovieRepositoryImpl(this._dataSource, this._networkInfo);

  @override
  Future<Either<Failure, DetailMovie>> getDetailMovie({
    int id,
  }) async {
    if (await _networkInfo.isConnected) {
      try {
        final result = await _dataSource.getDetailMovie(id: id);

        if (result == null) {
          return left(const Failure.unexpected());
        }

        return right(result.toDetailMovie());
      } on ServerException {
        return left(const Failure.serverError());
      } on EmptyResultException {
        return left(const Failure.emptyResult());
      }
    } else {
      return left(const Failure.noInternetConnection());
    }
  }
}
