import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:the_movie_wiki/data/repository/movie_repository.dart';
import 'package:the_movie_wiki/ui/search_movies/bloc/search_movies_event.dart';
import 'package:the_movie_wiki/ui/search_movies/bloc/search_movies_state.dart';
import 'package:the_movie_wiki/data/model/common/result_error.dart';

class SearchMoviesBloc extends Bloc<SearchMoviesEvent, SearchMoviesState> {
  final MovieRepository _movieRepository;

  SearchMoviesBloc(this._movieRepository) : super();

  void onSearchMovieInitiated(String searchQuery, int page) {
    add(SearchMoviesEventInitiated((b) => b
      ..searchQuery = searchQuery
      ..page = page));
  }

  void onSearchMovieNextResult(String searchQuery, int page) {
    add(SearchMoviesEventNextResult((b) => [
          b..searchQuery = searchQuery,
          b..page = page,
        ]));
  }

  @override
  SearchMoviesState get initialState => SearchMoviesState.initial();

  @override
  Stream<SearchMoviesState> mapEventToState(
    SearchMoviesEvent event,
  ) async* {
    if (event is SearchMoviesEventInitiated) {
      yield* _searchMoviesInitiated(event);
    } else if (event is SearchMoviesEventNextResult) {
      yield* _searchMoviesNextResult(event);
    }
  }

  Stream<SearchMoviesState> _searchMoviesInitiated(
      SearchMoviesEventInitiated event) async* {
    yield SearchMoviesState.loading();
    try {
      final _result =
          await _movieRepository.searchMovies(event.searchQuery, event.page);
      yield SearchMoviesState.success(_result);
    } on ResultError catch (e) {
      yield SearchMoviesState.error(e.message);
    } on NoResultException catch (e) {
      yield SearchMoviesState.error(e.message);
    } on EndOfResultException catch (e) {
      yield state.rebuild((b) => b..endOfResult = true);
      yield SearchMoviesState.error(e.message);
    } on NoQueryException catch (e) {
      yield SearchMoviesState.error(e.message);
    } on SocketException catch (_) {
      yield SearchMoviesState.error(
          'Unable to procces your request, please check your network connection.');
    }
  }

  Stream<SearchMoviesState> _searchMoviesNextResult(
      SearchMoviesEventNextResult event) async* {
    try {
      final _result = await _movieRepository.searchMovies(
        event.searchQuery,
        event.page,
      );

      yield SearchMoviesState.success(state.getResults + _result);
    } on EndOfResultException catch (_) {
      yield state.rebuild((b) => b..endOfResult = true);
    } on NoResultException catch (e) {
      yield SearchMoviesState.error(e.message);
    }
  }
}
