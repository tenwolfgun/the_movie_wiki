import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:the_movie_wiki/core/error/failure.dart';
import 'package:the_movie_wiki/features/movie/features/detail_movie/domain/entities/detail_movie.dart';
import 'package:the_movie_wiki/features/movie/features/detail_movie/domain/repositories/detail_movie_repository.dart';

@lazySingleton
class GetDetailMovie {
  final DetailMovieRepository _detailMovieRepository;

  const GetDetailMovie(this._detailMovieRepository);

  Future<Either<Failure, DetailMovie>> call({
    @required int id,
  }) async {
    return _detailMovieRepository.getDetailMovie(id: id);
  }
}
