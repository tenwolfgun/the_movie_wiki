import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:the_movie_wiki/data/repository/movie_repository.dart';
import 'package:the_movie_wiki/ui/airing_today_tv_show/bloc/airing_today_tv_show_event.dart';
import 'package:the_movie_wiki/ui/airing_today_tv_show/bloc/airing_today_tv_show_state.dart';
import 'package:the_movie_wiki/data/model/common/result_error.dart';

class AiringTodayTvShowBloc
    extends Bloc<AiringTodayTvShowEvent, AiringTodayTvShowState> {
  final MovieRepository _movieRepository;

  AiringTodayTvShowBloc(this._movieRepository) : super();

  void onAirTvShowInitiated(int page) {
    add(AiringTodayTvShowEventInitiated((b) => b..page = page));
  }

  void onAirTvNextResult(int page) {
    add(AiringTodayTvShowEventNextResult((b) => b..page = page));
  }

  @override
  AiringTodayTvShowState get initialState => AiringTodayTvShowState.initial();

  @override
  Stream<AiringTodayTvShowState> mapEventToState(
    AiringTodayTvShowEvent event,
  ) async* {
    if (event is AiringTodayTvShowEventInitiated) {
      yield* mapAiringTodayInitiated(event);
    } else if (event is AiringTodayTvShowEventNextResult) {
      yield* mapNextResult(event);
    }
  }

  Stream<AiringTodayTvShowState> mapAiringTodayInitiated(
      AiringTodayTvShowEventInitiated event) async* {
    yield AiringTodayTvShowState.loading();
    try {
      final _airingTodayResult = await _movieRepository.airingToday(event.page);
      yield AiringTodayTvShowState.success(_airingTodayResult);
    } on ResultError catch (e) {
      yield AiringTodayTvShowState.error(e.message);
    } on NoResultException catch (_) {
      yield AiringTodayTvShowState.error(
          'Unable to procces your request, please check your network connection.');
    } on SocketException catch (_) {
      yield AiringTodayTvShowState.error(
          'Unable to procces your request, please check your network connection.');
    }
  }

  Stream<AiringTodayTvShowState> mapNextResult(
      AiringTodayTvShowEventNextResult event) async* {
    try {
      final _airingTodayResult = await _movieRepository.airingToday(event.page);
      yield AiringTodayTvShowState.success(
          state.getResults + _airingTodayResult);
    } on EndOfResultException catch (_) {
      yield state.rebuild((b) => b..endOfResult = true);
    } on NoResultException catch (e) {
      yield AiringTodayTvShowState.error(e.message);
    }
  }
}
