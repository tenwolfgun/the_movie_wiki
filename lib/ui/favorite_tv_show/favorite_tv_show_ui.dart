import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image/network.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:the_movie_wiki/data/local/db/moor_database.dart';
import 'package:the_movie_wiki/ui/common_widget/custom_error_message.dart';
import 'package:the_movie_wiki/ui/detail_tv_show/detail_tv_show_ui.dart';
import 'package:the_movie_wiki/ui/favorite_tv_show/bloc/bloc.dart';

class FavoriteTvShowUi extends StatefulWidget {
  @override
  _FavoriteTvShowUiState createState() => _FavoriteTvShowUiState();
}

class _FavoriteTvShowUiState extends State<FavoriteTvShowUi> {
  final _favoriteTvShowBloc = kiwi.Container().resolve<FavoriteTvShowBloc>();

  @override
  void initState() {
    _favoriteTvShowBloc.add(FavoriteTvShowEventInitiated());
    super.initState();
  }

  @override
  void dispose() {
    _favoriteTvShowBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _favoriteTvShowBloc,
      child: _builScaffold(),
    );
  }

  Scaffold _builScaffold() {
    return Scaffold(
      backgroundColor: Color(0XFF0C0B10),
      body: BlocBuilder(
        bloc: _favoriteTvShowBloc,
        builder: (context, FavoriteTvShowState state) {
          if (state is InitialFavoriteTvShowState) {
            return Container();
          } else if (state is LoadingFavoriteTvShowState) {
            return _buildLoader();
          } else if (state is LoadedFavoriteTvShowState) {
            return _favoriteTvShow(state);
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

  Widget _favoriteTvShow(LoadedFavoriteTvShowState state) {
    // var size = MediaQuery.of(context).size;
    // /*24 is for notification bar on Android*/
    // final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    // final double itemWidth = size.width / 2;
    return Scrollbar(
      child: StaggeredGridView.countBuilder(
        padding: EdgeInsets.only(top: 12),
        shrinkWrap: true,
        itemCount: state.favorteTvShow.length,
        crossAxisCount: 3,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        staggeredTileBuilder: (_) => StaggeredTile.fit(1),
        // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //   crossAxisCount: 3,
        //   childAspectRatio: itemWidth / itemHeight,
        // ),
        itemBuilder: (context, index) {
          return _buildItem(state.favorteTvShow[index]);
        },
      ),
    );
  }

  Widget _buildItem(FavoriteTvShow state) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4, left: 4, right: 4, top: 4),
      child: InkWell(
        onTap: () {
          Route route = MaterialPageRoute(
            builder: (context) => DetailTvShowUi(
              id: state.id.toInt(),
              imageName: state.posterPath.toString(),
              name: state.name.toString(),
              rating: state.voteAverage,
            ),
          );
          Navigator.push(context, route).then((onValue) {
            setState(() {
              _favoriteTvShowBloc.add(FavoriteTvShowEventInitiated());
            });
          });
        },
        child: Card(
          color: Color(0XFF0C0B10),
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
                  state.name,
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
