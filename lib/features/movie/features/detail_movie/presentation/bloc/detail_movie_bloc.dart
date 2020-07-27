import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'detail_movie_event.dart';
part 'detail_movie_state.dart';
class DetailMovieBloc extends Bloc<DetailMovieEvent, DetailMovieState> {
  DetailMovieBloc() : super(DetailMovieInitial());
  @override
  Stream<DetailMovieState> mapEventToState(
    DetailMovieEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
