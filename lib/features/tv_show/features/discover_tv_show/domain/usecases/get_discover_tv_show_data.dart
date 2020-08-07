import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:the_movie_wiki/core/error/failure.dart';
import 'package:the_movie_wiki/features/tv_show/features/discover_tv_show/domain/entities/discover_tv_show.dart';
import 'package:the_movie_wiki/features/tv_show/features/discover_tv_show/domain/repositories/discover_tv_show_repository.dart';

@lazySingleton
class GetDiscoverTvShowData {
  final DiscoverTvShowRepository _repository;

  GetDiscoverTvShowData(this._repository);

  Future<Either<Failure, DiscoverTvShow>> call({
    @required String type,
    @required int page,
  }) async {
    return await _repository.getDiscoverTvShowData(
      type: type,
      page: page,
    );
  }
}
