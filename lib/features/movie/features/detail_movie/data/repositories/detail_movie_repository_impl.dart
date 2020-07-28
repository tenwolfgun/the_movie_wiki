import 'package:injectable/injectable.dart';
import 'package:the_movie_wiki/core/error/exception.dart';
import 'package:the_movie_wiki/core/network/network_info.dart';
import 'package:the_movie_wiki/features/movie/features/detail_movie/data/datasources/detail_movie_remote_data_source.dart';
import 'package:the_movie_wiki/features/movie/features/detail_movie/data/models/detail_movie_model.dart';
import 'package:the_movie_wiki/features/movie/features/detail_movie/domain/entities/detail_movie.dart';
import 'package:the_movie_wiki/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:the_movie_wiki/features/movie/features/detail_movie/domain/repositories/detail_movie_repository.dart';

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
