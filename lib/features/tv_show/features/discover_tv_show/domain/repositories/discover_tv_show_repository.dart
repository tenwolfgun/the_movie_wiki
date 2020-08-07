import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:the_movie_wiki/core/error/failure.dart';
import 'package:the_movie_wiki/features/tv_show/features/discover_tv_show/domain/entities/discover_tv_show.dart';

abstract class DiscoverTvShowRepository {
  Future<Either<Failure, DiscoverTvShow>> getDiscoverTvShowData({
    @required String type,
    @required int page,
  });
}
