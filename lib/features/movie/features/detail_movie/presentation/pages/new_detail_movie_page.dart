import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/extension/extension_helper.dart';
import '../../../../../../core/widget/error_state.dart';
import '../../../../../../core/widget/initial_state.dart';
import '../../../../../../core/widget/loading_state.dart';
import '../../../../../../injection.dart';
import '../bloc/detail_movie_bloc.dart';
import '../widgets/sliver_widget.dart';

class NewDetailMoviePage extends StatefulWidget {
  final int id;
  final String posterPath;
  final String title;
  final double rating;
  final String overview;
  final String releaseDate;

  const NewDetailMoviePage({
    Key key,
    this.id,
    this.posterPath,
    this.title,
    this.rating,
    this.overview,
    this.releaseDate,
  }) : super(key: key);

  @override
  _NewDetailMoviePageState createState() => _NewDetailMoviePageState();
}

const kExpandedHeight = 500.0;

class _NewDetailMoviePageState extends State<NewDetailMoviePage>
    with SingleTickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  TabController _tabController;
  final _bloc = getIt<DetailMovieBloc>();

  bool _showTitle = false;

  bool get _lastStatus {
    return _scrollController.hasClients &&
        _scrollController.offset > kExpandedHeight - kToolbarHeight;
  }

  _scrollListener() {
    if (_lastStatus != _showTitle) {
      setState(() {
        _showTitle = _lastStatus;
      });
    }
  }

  _initBloc() {
    _bloc.add(DetailMovieEvent.getData(id: widget.id));
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
    _initBloc();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody: true,
      backgroundColor: const Color(0XFF0C0B10),
      body: BlocBuilder<DetailMovieBloc, DetailMovieState>(
          cubit: _bloc,
          builder: (_, state) {
            return state.map(
              initial: (_) => const InitialState(),
              loading: (_) => const LoadingState(),
              loaded: (state) {
                return NestedScrollView(
                  controller: _scrollController,
                  headerSliverBuilder: (_, isScroll) {
                    return <Widget>[
                      SliverWidget(
                        isScroll: isScroll,
                        tabController: _tabController,
                        state: state,
                        title: widget.title,
                        posterPath: widget.posterPath,
                        kExpandedHeight: kExpandedHeight,
                        showTitle: _showTitle,
                        rating: widget.rating,
                        releaseDate: widget.releaseDate.toDate(),
                      ),
                    ];
                  },
                  body: TabBarView(
                    controller: _tabController,
                    children: <Widget>[
                      Container(),
                      Container(),
                      Container(),
                    ],
                  ),
                );
              },
              error: (state) => ErrorState(
                errorMessage: state.errorMessage,
              ),
            );
          }),
    );
  }
}
