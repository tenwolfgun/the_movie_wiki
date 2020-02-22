import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:the_movie_wiki/ui/common_widget/custom_error_message.dart';
import 'package:the_movie_wiki/ui/common_widget/custom_loading_indicator.dart';
import 'package:the_movie_wiki/ui/genre/bloc/bloc.dart';
import 'package:the_movie_wiki/ui/popular_movie_by_genre/popular_movie_by_genre_ui.dart';

class GenreMovieUi extends StatefulWidget {
  @override
  _GenreMovieUiState createState() => _GenreMovieUiState();
}

class _GenreMovieUiState extends State<GenreMovieUi>
    with AutomaticKeepAliveClientMixin {
  final _movieGenreBloc = kiwi.Container().resolve<GenreBloc>();

  @override
  void initState() {
    _movieGenreBloc.onGenreBlocInitiated(genreType: 'movie');
    super.initState();
  }

  @override
  void dispose() {
    _movieGenreBloc.close();
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider(
      create: (context) => _movieGenreBloc,
      child: _buildScaffold(),
    );
  }

  Widget _buildScaffold() {
    return Scaffold(
      backgroundColor: Color(0XFF0C0B10),
      body: BlocBuilder(
        bloc: _movieGenreBloc,
        builder: (context, GenreState state) {
          if (state.isLoading) {
            return CustomLoadingIndicator(
              color: Color(0XFFEB4B1F),
            );
          } else if (state.isSuccessful) {
            return _buildGenreList(state);
          } else {
            return CustomErrorMessage(
              errorMessage: state.error,
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

  Widget _buildGenreList(GenreState state) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 12),
      physics: ScrollPhysics(),
      itemCount: state.getResults.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Route route = MaterialPageRoute(
              builder: (context) => PopularMovieByGenreUi(
                genreId: state.getResults[index].id.toString(),
                genreName: state.getResults[index].name.toString(),
              ),
            );
            Navigator.push(context, route);
          },
          child: ListTile(
            leading: CircleAvatar(
              child: Center(
                child: Text(
                  state.getResults[index].name.substring(0, 1).toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            title: Text(
              state.getResults[index].name.toString(),
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }
}
