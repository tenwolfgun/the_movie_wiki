import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:the_movie_wiki/data/repository/movie_repository.dart';
import 'package:the_movie_wiki/ui/on_air_tv_show/bloc/on_air_tv_event.dart';
import 'package:the_movie_wiki/ui/on_air_tv_show/bloc/on_air_tv_state.dart';
import 'package:the_movie_wiki/data/model/common/result_error.dart';

class OnAirTvBloc extends Bloc<OnAirTvEvent, OnAirTvState> {
  final MovieRepository _movieRepository;

  OnAirTvBloc(this._movieRepository);

  void onAirTvShowInitiated(int page) {
    add(OnAirTvEventInitiated((b) => b..page = page));
  }

  void onAirTvNextResult(int page) {
    add(OnAirTvEventNextResult((b) => b..page = page));
  }

  @override
  OnAirTvState get initialState => OnAirTvState.initial();

  @override
  Stream<OnAirTvState> mapEventToState(
    OnAirTvEvent event,
  ) async* {
    if (event is OnAirTvEventInitiated) {
      yield* mapOnAirInitiated(event);
    } else if (event is OnAirTvEventNextResult) {
      yield* mapNextResult(event);
    }
  }

  Stream<OnAirTvState> mapOnAirInitiated(OnAirTvEventInitiated event) async* {
    yield OnAirTvState.loading();
    try {
      final _onAirTvResult = await _movieRepository.onAir(event.page);
      yield OnAirTvState.success(_onAirTvResult);
    } on ResultError catch (e) {
      yield OnAirTvState.error(e.message);
    } on NoResultException catch (_) {
      yield OnAirTvState.error(
          'Unable to procces your request, please check your network connection.');
    } on SocketException catch (_) {
      yield OnAirTvState.error(
          'Unable to procces your request, please check your network connection.');
    }
  }

  Stream<OnAirTvState> mapNextResult(OnAirTvEventNextResult event) async* {
    try {
      final _onAirTvResult = await _movieRepository.onAir(event.page);
      yield OnAirTvState.success(state.getResults + _onAirTvResult);
    } on EndOfResultException catch (_) {
      yield state.rebuild((b) => b..endOfResult = true);
    } on NoResultException catch (e) {
      yield OnAirTvState.error(e.message);
    }
  }
}
