import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:the_movie_wiki/core/error/failure.dart';
import 'package:the_movie_wiki/features/tv_show/features/detail_tv_show/domain/entities/detail_tv_show.dart';

abstract class DetailTvShowRepository {
  Future<Either<Failure, DetailTvShow>> getDetailTvShowData({
    @required int id,
  });
}
