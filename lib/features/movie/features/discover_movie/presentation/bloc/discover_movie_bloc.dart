import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'discover_movie_bloc.freezed.dart';
part 'discover_movie_event.dart';
part 'discover_movie_state.dart';

@injectable
class DiscoverMovieBloc extends Bloc<DiscoverMovieEvent, DiscoverMovieState> {
  DiscoverMovieBloc() : super(const DiscoverMovieState.initial());

  @override
  Stream<DiscoverMovieState> mapEventToState(
    DiscoverMovieEvent event,
  ) async* {}
}
