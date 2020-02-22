import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:the_movie_wiki/data/model/common/result.dart';
import 'package:the_movie_wiki/ui/popular_movie/bloc/bloc.dart';

class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  final _popularMovieBloc = kiwi.Container().resolve<PopularMovieBloc>();
  final _scrollController = ScrollController();
  int page = 1;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _popularMovieBloc,
      child: _buildScaffold(),
    );
  }

  @override
  void initState() {
    super.initState();
    _popularMovieBloc.onPopularMovieInitiated(1);
  }

  @override
  void dispose() {
    super.dispose();
    _popularMovieBloc.close();
  }

  Scaffold _buildScaffold() {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nyoba Movie DB'),
      ),
      body: BlocBuilder(
        bloc: _popularMovieBloc,
        builder: (context, PopularMovieState state) {
          if (state.isLoading) {
            return CircularProgressIndicator();
          } else if (state.isSuccessful) {
            return NotificationListener<ScrollNotification>(
              onNotification: _handleScrollNotification,
              child: ListView.builder(
                controller: _scrollController,
                itemCount: state.endOfResult
                    ? state.getResults.length
                    : state.getResults.length + 1,
                itemBuilder: (context, index) {
                  return index >= state.getResults.length
                      ? _buildLoaderListItem()
                      : _buildVideoListItemCard(state.getResults[index]);
                },
              ),
            );
          } else {
            return Center(
              child: Text('Error'),
            );
          }
        },
      ),
    );
  }

  bool _handleScrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification &&
        _scrollController.position.extentAfter == 0) {
      page++;
      _popularMovieBloc.onPopularMovieNextResult(page);
    }
    return false;
  }

  Widget _buildLoaderListItem() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildVideoListItemCard(Result results) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.network(
                'https://image.tmdb.org/t/p/w400/' + results.posterPath,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 5),
            Text(
              results.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SizedBox(height: 5),
            Text(
              results.overview,
            ),
          ],
        ),
      ),
    );
  }
}
