import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../../../core/extension/extension_helper.dart';
import '../../domain/entities/detail_tv_show.dart';
import '../../domain/usecases/get_detail_tv_show.dart';

part 'detail_tv_show_bloc.freezed.dart';
part 'detail_tv_show_event.dart';
part 'detail_tv_show_state.dart';

@injectable
class DetailTvShowBloc extends Bloc<DetailTvShowEvent, DetailTvShowState> {
  final GetDetailTvShow _detailTvShow;

  DetailTvShowBloc(
    this._detailTvShow,
  ) : super(DetailTvShowState.initial());

  @override
  Stream<DetailTvShowState> mapEventToState(
    DetailTvShowEvent event,
  ) async* {
    yield* event.map(
      getData: (e) async* {
        yield const DetailTvShowState.loading();
        final result = await _detailTvShow(id: e.id);
        yield result.fold(
          (failure) => DetailTvShowState.error(failure.toErrorMessage()),
          (data) => DetailTvShowState.loaded(
            detailTvShow: data,
          ),
        );
      },
    );
  }
}
