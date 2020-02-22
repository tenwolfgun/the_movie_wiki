import 'package:bloc/bloc.dart';
import 'package:the_movie_wiki/data/repository/movie_repository.dart';
import 'package:the_movie_wiki/ui/search_tv_show/bloc/search_tv_show_event.dart';
import 'package:the_movie_wiki/ui/search_tv_show/bloc/search_tv_show_state.dart';
import 'package:the_movie_wiki/data/model/common/result_error.dart';

class SearchTvShowBloc extends Bloc<SearchTvShowEvent, SearchTvShowState> {
  final MovieRepository _movieRepository;

  SearchTvShowBloc(this._movieRepository) : super();

  void onSearchTvShowInitiated(String searchQuery, int page) {
    add(SearchTvShowEventInitiated(
      (b) => b
        ..searchQuery = searchQuery
        ..page = page,
    ));
  }

  void onSearchTvShowNextResult(String searchQuery, int page) {
    add(SearchTvShowEventNextResult(
      (b) => b
        ..searchQuery = searchQuery
        ..page = page,
    ));
  }

  @override
  SearchTvShowState get initialState => SearchTvShowState.initial();

  @override
  Stream<SearchTvShowState> mapEventToState(
    SearchTvShowEvent event,
  ) async* {
    if (event is SearchTvShowEventInitiated) {
      yield* _searchTvShowInitiated(event);
    } else if (event is SearchTvShowEventNextResult) {
      yield* _searchTvShowNextResult(event);
    }
  }

  Stream<SearchTvShowState> _searchTvShowInitiated(
      SearchTvShowEventInitiated event) async* {
    yield SearchTvShowState.loading();

    try {
      final _result = await _movieRepository.searchTvShow(
        searchQuery: event.searchQuery,
        page: event.page,
      );
      yield SearchTvShowState.success(_result);
    } on ResultError catch (e) {
      yield SearchTvShowState.error(e.message);
    } on NoResultException catch (e) {
      yield SearchTvShowState.error(e.message);
    } on EndOfResultException catch (e) {
      yield state.rebuild((b) => b..endOfResult = true);
      yield SearchTvShowState.error(e.message);
      // yield SearchTvShowState.error(e.message);
    } on NoQueryException catch (e) {
      yield SearchTvShowState.error(e.message);
    }
  }

  Stream<SearchTvShowState> _searchTvShowNextResult(
      SearchTvShowEventNextResult event) async* {
    try {
      final _result = await _movieRepository.searchTvShow(
        searchQuery: event.searchQuery,
        page: event.page,
      );

      yield SearchTvShowState.success(state.getResults + _result);
    } on EndOfResultException catch (_) {
      yield state.rebuild((b) => b..endOfResult = true);
    } on NoResultException catch (e) {
      yield SearchTvShowState.error(e.message);
    }
  }
}
