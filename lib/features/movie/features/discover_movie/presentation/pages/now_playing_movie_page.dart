import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:overlay_support/overlay_support.dart';

import '../../../../../../core/widget/build_notification.dart';
import '../../../../../../core/widget/error_state.dart';
import '../../../../../../core/widget/initial_state.dart';
import '../../../../../../core/widget/loading_state.dart';
import '../bloc/discover_movie_bloc.dart';
import '../widgets/movie_loaded_state.dart';

class NowPlayingMoviePage extends StatefulWidget {
  const NowPlayingMoviePage({Key key}) : super(key: key);

  @override
  _NowPlayingMoviePageState createState() => _NowPlayingMoviePageState();
}

class _NowPlayingMoviePageState extends State<NowPlayingMoviePage>
    with AutomaticKeepAliveClientMixin {
  final ScrollController _scrollController = ScrollController();
  int page = 1;
  bool _isFetch = false;

  @override
  bool get wantKeepAlive => true;

  void blocInit() {
    context.bloc<DiscoverMovieBloc>().add(GetMovieData('now_playing', page));
  }

  void blocRetry() {
    context
        .bloc<DiscoverMovieBloc>()
        .add(GetMovieDataRetry('now_playing', page));
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
              onPressed: blocRetry,
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
