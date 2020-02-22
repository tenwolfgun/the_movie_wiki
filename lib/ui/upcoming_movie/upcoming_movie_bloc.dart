import 'package:bloc/bloc.dart';
import 'package:the_movie_wiki/data/model/common/result_error.dart';
import 'package:the_movie_wiki/data/repository/movie_repository.dart';
import 'package:the_movie_wiki/ui/upcoming_movie/upcoming_movie_event.dart';
import 'package:the_movie_wiki/ui/upcoming_movie/upcoming_movie_state.dart';

class UpcomingMovieBloc extends Bloc<UpcomingMovieEvent, UpcomingMovieState> {
  final MovieRepository _movieRepository;

  UpcomingMovieBloc(this._movieRepository) : super();

  @override
  UpcomingMovieState get initialState => UpcomingMovieState.initial();

  @override
  Stream<UpcomingMovieState> mapEventToState(
    UpcomingMovieEvent event,
  ) async* {
    if (event is UpcomingMovieInitiated) {
      yield UpcomingMovieState.loading();

      try {
        final _upcomingMovieResult = await _movieRepository.upcomingMovieList();
        yield UpcomingMovieState.success(_upcomingMovieResult);
      } on ResultError catch (e) {
        yield UpcomingMovieState.error(e.message);
      } on NoResultException catch (_) {
        yield UpcomingMovieState.error(
            'Unable to procces your request, please check your network connection.');
      }
    }
  }
}
