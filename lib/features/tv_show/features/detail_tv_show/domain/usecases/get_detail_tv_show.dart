import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/error/failure.dart';
import '../entities/detail_tv_show.dart';
import '../repositories/detail_tv_show_repository.dart';

@lazySingleton
class GetDetailTvShow {
  final DetailTvShowRepository _repository;

  const GetDetailTvShow(this._repository);

  Future<Either<Failure, DetailTvShow>> call({
    @required int id,
  }) async {
    return _repository.getDetailTvShowData(id: id);
  }
}
