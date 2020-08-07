import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'discover_tv_show_event.dart';
part 'discover_tv_show_state.dart';
class DiscoverTvShowBloc extends Bloc<DiscoverTvShowEvent, DiscoverTvShowState> {
  DiscoverTvShowBloc() : super(DiscoverTvShowInitial());
  @override
  Stream<DiscoverTvShowState> mapEventToState(
    DiscoverTvShowEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
