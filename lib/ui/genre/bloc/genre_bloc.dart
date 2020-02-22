import 'package:bloc/bloc.dart';
import 'package:the_movie_wiki/data/model/common/result_error.dart';
import 'package:the_movie_wiki/data/repository/movie_repository.dart';
import 'package:the_movie_wiki/ui/genre/bloc/genre_event.dart';
import 'package:the_movie_wiki/ui/genre/bloc/genre_state.dart';

class GenreBloc extends Bloc<GenreEvent, GenreState> {
  final MovieRepository _movieRepository;

  GenreBloc(this._movieRepository) : super();

  void onGenreBlocInitiated({String genreType}) {
    add(GenreEventInitiated((b) => b..genreType = genreType));
  }

  @override
  GenreState get initialState => GenreState.initial();

  @override
  Stream<GenreState> mapEventToState(
    GenreEvent event,
  ) async* {
    if (event is GenreEventInitiated) {
      yield* _genreList(event);
    }
  }

  Stream<GenreState> _genreList(GenreEventInitiated event) async* {
    yield GenreState.loading();
    try {
      final _genreResult = await _movieRepository.genreList(event.genreType);
      yield GenreState.success(_genreResult);
    } on ResultError catch (e) {
      yield GenreState.error(e.message);
    } on NoResultException catch (_) {
      yield GenreState.error(
          'Unable to procces your request, please check your network connection.');
    }
  }
}
