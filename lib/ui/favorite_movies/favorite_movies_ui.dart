import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image/network.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:the_movie_wiki/data/local/db/moor_database.dart';
import 'package:the_movie_wiki/ui/common_widget/custom_error_message.dart';
import 'package:the_movie_wiki/ui/detail_movie/detail_movie_ui.dart';
import 'package:the_movie_wiki/ui/favorite_movies/bloc/bloc.dart';

class FavoriteMoviesUi extends StatefulWidget {
  @override
  _FavoriteMoviesUiState createState() => _FavoriteMoviesUiState();
}

class _FavoriteMoviesUiState extends State<FavoriteMoviesUi> {
  final _favoriteMoviesBloc = kiwi.Container().resolve<FavoriteMoviesBloc>();

  // @override
  // bool get wantKeepAlive => true;

  @override
  void initState() {
    _favoriteMoviesBloc.add(FavoriteMoviesEventInitiated());
    super.initState();
  }

  @override
  void dispose() {
    _favoriteMoviesBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // super.build(context);
    return BlocProvider(
      create: (context) => _favoriteMoviesBloc,
      child: _buildScaffold(),
    );
  }

  Scaffold _buildScaffold() {
    return Scaffold(
      // resizeToAvoidBottomPadding: true,
      backgroundColor: Color(0XFF0C0B10),
      body: BlocBuilder(
        bloc: _favoriteMoviesBloc,
        builder: (context, FavoriteMoviesState state) {
          if (state is InitialFavoriteMoviesState) {
            return Container();
          } else if (state is LoadingFavoriteMoviesState) {
            return _buildLoader();
          } else if (state is LoadedFavoriteMoviesState) {
            return _favoriteMovies(state);
          } else {
            return CustomErrorMessage(
              errorMessage: 'No data available',
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 14,
                height: 1.5,
              ),
              icon: FontAwesomeIcons.sadTear,
              iconColor: Colors.white,
              iconSize: 30,
            );
          }
        },
      ),
    );
  }

  Widget _buildLoader() {
    return Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(
          Color(0XFFEB4B1F),
        ),
      ),
    );
  }

  Widget _favoriteMovies(LoadedFavoriteMoviesState state) {
    // var size = MediaQuery.of(context).size;
    // /*24 is for notification bar on Android*/
    // final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    // final double itemWidth = size.width / 2;
    return Container(
      child: StaggeredGridView.countBuilder(
        // physics: py(),
        padding: EdgeInsets.only(top: 12),
        shrinkWrap: true,
        itemCount: state.favoriteMovie.length,
        crossAxisCount: 3,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        staggeredTileBuilder: (_) => StaggeredTile.fit(1),

        // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //   crossAxisCount: 3,
        //   childAspectRatio: itemWidth / itemHeight,
        // ),
        itemBuilder: (context, index) {
          return _buildItem(state.favoriteMovie[index]);
        },
      ),
    );
  }

  Widget _buildItem(FavoriteMovie state) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4, left: 4, right: 4, top: 4),
      child: InkWell(
        onTap: () {
          Route route = MaterialPageRoute(
            builder: (context) => DetailMovieUi(
              id: state.id,
              imageName: state.posterPath.toString(),
              titleName: state.title.toString(),
              rating: state.voteAverage,
            ),
          );
          Navigator.push(context, route).then((onValue) {
            setState(() {
              _favoriteMoviesBloc.add(FavoriteMoviesEventInitiated());
            });
          });
        },
        child: Card(
          color: Color(0XFF0C0B10),
          // clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 0.7,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image(
                    image: NetworkImageWithRetry(
                      'https://image.tmdb.org/t/p/w400/' +
                          state.posterPath.toString(),
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0, right: 0, top: 8),
                child: Text(
                  state.title,
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
