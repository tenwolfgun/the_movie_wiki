import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/widget/initial_state.dart';
import '../../../../../../core/widget/loading_state.dart';
import '../bloc/discover_movie_bloc.dart';

class PopularMoviePage extends StatefulWidget {
  const PopularMoviePage({Key key}) : super(key: key);

  @override
  _PopularMoviePageState createState() => _PopularMoviePageState();
}

class _PopularMoviePageState extends State<PopularMoviePage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: BlocBuilder<DiscoverMovieBloc, DiscoverMovieState>(
        builder: (_, state) => state.map(
          initial: (_) {
            return const InitialState();
          },
          loading: (_) {
            return const LoadingState();
          },
          loaded: (e) {
            return ListView.builder(
              itemCount: e.results.length,
              itemBuilder: (_, i) {
                return ListTile(
                  title: Text(e.results[i].title),
                );
              },
            );
          },
          error: (e) {
            return Center(child: Text(e.errorMessage));
          },
        ),
      ),
    );
  }
}
