import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:the_movie_wiki/core/widget/build_notification.dart';
import 'package:the_movie_wiki/core/widget/error_state.dart';
import 'package:the_movie_wiki/features/movie/features/discover_movie/presentation/widgets/movie_loaded_state.dart';

import '../../../../../../core/widget/initial_state.dart';
import '../../../../../../core/widget/loading_state.dart';
import '../bloc/discover_movie_bloc.dart';

class TopRatedMoviePage extends StatefulWidget {
  const TopRatedMoviePage({Key key}) : super(key: key);

  @override
  _TopRatedMoviePageState createState() => _TopRatedMoviePageState();
}

class _TopRatedMoviePageState extends State<TopRatedMoviePage>
    with AutomaticKeepAliveClientMixin {
  final ScrollController _scrollController = ScrollController();
  int page = 1;
  bool _isFetch = false;

  @override
  bool get wantKeepAlive => true;

  void blocInit() {
    context.bloc<DiscoverMovieBloc>().add(GetMovieData('top_rated', page));
  }

  void blocRetry() {
    context.bloc<DiscoverMovieBloc>().add(GetMovieDataRetry('top_rated', page));
  }

  void _onScroll() {
    final _position = _scrollController.position;
    if (_position.pixels == _position.maxScrollExtent && _isFetch) {
      blocInit();
    }
  }

  @override
  void initState() {
    _scrollController.addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: const Color(0XFF0C0B10),
      body: BlocConsumer<DiscoverMovieBloc, DiscoverMovieState>(
        listener: (_, state) {
          if (state is Loaded) {
            if (!state.isError &&
                !state.isLoading &&
                !state.isEndOfResult &&
                !state.isLoadData) {
              _isFetch = true;
              page++;
            } else if (state.isError) {
              _isFetch = false;
              showOverlayNotification(
                (_) => BuildNotification(
                  errorMessage: state.errorMessage,
                ),
              );
            } else if (state.isEndOfResult ||
                state.isLoadData ||
                state.isLoading) {
              _isFetch = false;
            }
          }
        },
        builder: (_, state) => state.map(
          initial: (_) {
            return const InitialState();
          },
          loading: (_) {
            return const LoadingState();
          },
          loaded: (state) {
            return MovieLoadedState(
              scrollController: _scrollController,
              onPressed: blocInit,
              state: state,
            );
          },
          error: (state) {
            return ErrorState(
              onPressed: blocInit,
              errorMessage: state.errorMessage,
            );
          },
        ),
      ),
    );
  }
}
