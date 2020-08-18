import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../../../core/domain/entities/results/movie_result.dart';
import '../../../../../../core/extension/extension_helper.dart';
import '../../domain/usecases/get_discover_movie_data.dart';

part 'discover_movie_bloc.freezed.dart';
part 'discover_movie_event.dart';
part 'discover_movie_state.dart';

@injectable
class DiscoverMovieBloc extends Bloc<DiscoverMovieEvent, DiscoverMovieState> {
  final GetDiscoverMovieData _getDiscoverMovieData;

  DiscoverMovieBloc(
    this._getDiscoverMovieData,
  ) : super(DiscoverMovieState.initial());

  @override
  Stream<Transition<DiscoverMovieEvent, DiscoverMovieState>> transformEvents(
    Stream<DiscoverMovieEvent> events,
    TransitionFunction<DiscoverMovieEvent, DiscoverMovieState> transitionFn,
  ) {
    return super.transformEvents(
      events.debounceTime(const Duration(milliseconds: 500)),
      transitionFn,
    );
  }

  @override
  Stream<DiscoverMovieState> mapEventToState(
    DiscoverMovieEvent event,
  ) async* {
    final currentState = state;
    yield* event.map(
      getMovieData: (e) async* {
        if (!_isEndOfResult(state)) {
          if (currentState is Initial) {
            yield* _mapInitialAndErrorState(e);
          } else if (currentState is Loaded) {
            yield* _mapLoadedState(e, currentState);
          } else if (currentState is Error) {
            yield* _mapInitialAndErrorState(e);
          }
        }
      },
      getMovieDataRetry: (e) async* {
        if (currentState is Loaded && currentState.isError == true) {
          yield* _mapRetryToState(e, currentState);
        }
      },
    );
  }

  bool _isEndOfResult(DiscoverMovieState state) =>
      state is Loaded && state.isEndOfResult;

  Stream<DiscoverMovieState> _mapInitialAndErrorState(
    GetMovieData e,
  ) async* {
    yield DiscoverMovieState.loading();
    final result = await _getDiscoverMovieData(
      type: e.type,
      page: e.page,
    );
    yield result.fold(
      (failure) => DiscoverMovieState.error(
        failure.toErrorMessage(),
      ),
      (data) => data.totalPages != e.page
          ? DiscoverMovieState.loaded(
              results: data.results,
              isLoading: false,
              isError: false,
              isEndOfResult: false,
              isLoadData: false,
              errorMessage: '',
            )
          : DiscoverMovieState.loaded(
              results: data.results,
              isLoading: false,
              isError: false,
              isEndOfResult: true,
              isLoadData: false,
              errorMessage: '',
            ),
    );
  }

  Stream<DiscoverMovieState> _mapLoadedState(
    GetMovieData e,
    Loaded currentState,
  ) async* {
    yield DiscoverMovieState.loaded(
      results: currentState.results,
      isLoading: false,
      isError: false,
      isEndOfResult: false,
      isLoadData: true,
      errorMessage: '',
    );
    final result = await _getDiscoverMovieData(
      type: e.type,
      page: e.page,
    );
    yield result.fold(
      (failure) => DiscoverMovieState.loaded(
        results: currentState.results,
        isLoading: false,
        isError: true,
        isEndOfResult: false,
        isLoadData: false,
        errorMessage: failure.toErrorMessage(),
      ),
      (data) => data.totalPages != e.page
          ? DiscoverMovieState.loaded(
              results: currentState.results + data.results,
              isLoading: false,
              isError: false,
              isEndOfResult: false,
              isLoadData: false,
              errorMessage: '',
            )
          : DiscoverMovieState.loaded(
              results: currentState.results + data.results,
              isLoading: false,
              isError: false,
              isEndOfResult: true,
              isLoadData: false,
              errorMessage: '',
            ),
    );
  }

  Stream<DiscoverMovieState> _mapRetryToState(
    GetMovieDataRetry e,
    Loaded currentState,
  ) async* {
    yield DiscoverMovieState.loaded(
      results: currentState.results,
      isLoading: true,
      isError: false,
      isEndOfResult: false,
      isLoadData: false,
      errorMessage: '',
    );
    final result = await _getDiscoverMovieData(
      type: e.type,
      page: e.page,
    );
    yield result.fold(
      (failure) => DiscoverMovieState.loaded(
        results: currentState.results,
        isLoading: false,
        isError: true,
        isEndOfResult: false,
        isLoadData: false,
        errorMessage: failure.toErrorMessage(),
      ),
      (data) => data.totalPages != e.page
          ? DiscoverMovieState.loaded(
              results: currentState.results + data.results,
              isLoading: false,
              isError: false,
              isEndOfResult: false,
              isLoadData: false,
              errorMessage: '',
            )
          : DiscoverMovieState.loaded(
              results: currentState.results + data.results,
              isLoading: false,
              isError: false,
              isEndOfResult: true,
              isLoadData: false,
              errorMessage: '',
            ),
    );
  }
}
