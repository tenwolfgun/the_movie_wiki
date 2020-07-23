import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../../../../../core/error/failure.dart';
import '../entities/discover_movie.dart';

abstract class DiscoverMovieRepository {
  Future<Either<Failure, DiscoverMovie>> getDiscoverMovieData({
    @required String type,
    @required int page,
  });
}
