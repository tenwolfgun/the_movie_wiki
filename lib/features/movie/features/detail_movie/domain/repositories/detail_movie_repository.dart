import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../../../../../core/error/failure.dart';
import '../entities/detail_movie.dart';

abstract class DetailMovieRepository {
  Future<Either<Failure, DetailMovie>> getDetailMovie({@required int id});
}
