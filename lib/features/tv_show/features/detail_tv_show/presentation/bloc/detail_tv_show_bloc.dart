import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'detail_tv_show_event.dart';
part 'detail_tv_show_state.dart';
class DetailTvShowBloc extends Bloc<DetailTvShowEvent, DetailTvShowState> {
  DetailTvShowBloc() : super(DetailTvShowInitial());
  @override
  Stream<DetailTvShowState> mapEventToState(
    DetailTvShowEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
