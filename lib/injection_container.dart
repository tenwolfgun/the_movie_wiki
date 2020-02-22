import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:http/http.dart' as http;
import 'package:the_movie_wiki/data/network/movie_data_source.dart';
import 'package:the_movie_wiki/data/repository/movie_repository.dart';
import 'package:the_movie_wiki/ui/airing_today_tv_show/bloc/bloc.dart';
import 'package:the_movie_wiki/ui/detail_movie/bloc/bloc.dart';
import 'package:the_movie_wiki/ui/detail_tv_show/bloc/bloc.dart';
import 'package:the_movie_wiki/ui/favorite_tv_show/bloc/bloc.dart';
import 'package:the_movie_wiki/ui/on_air_tv_show/bloc/bloc.dart';
import 'package:the_movie_wiki/ui/popular_movie/bloc/bloc.dart';
import 'package:the_movie_wiki/ui/now_playing_movie/bloc/bloc.dart';
import 'package:the_movie_wiki/ui/popular_movie_by_genre/bloc/bloc.dart';
import 'package:the_movie_wiki/ui/popular_tv_show/bloc/popular_tv_show_bloc.dart';
import 'package:the_movie_wiki/ui/popular_tv_show_by_genre/bloc/bloc.dart';
import 'package:the_movie_wiki/ui/search_movies/bloc/bloc.dart';
import 'package:the_movie_wiki/ui/search_tv_show/bloc/bloc.dart';
import 'package:the_movie_wiki/ui/top_rated_movies/bloc/bloc.dart';
import 'package:the_movie_wiki/ui/top_rated_tv_show/bloc/bloc.dart';

import 'package:the_movie_wiki/ui/upcoming_movie/upcoming_movie_bloc.dart';
import 'package:the_movie_wiki/data/local/db/moor_database.dart';

import 'ui/favorite_movies/bloc/bloc.dart';
import 'ui/genre/bloc/bloc.dart';

void initKiwi() {
  kiwi.Container()
    ..registerInstance(http.Client())
    ..registerInstance(FavoriteDao(MoorDatabase()))
    ..registerFactory((c) => MovieDataSource(c.resolve()))
    ..registerFactory((c) => MovieRepository(c.resolve(), c.resolve()))
    ..registerFactory((c) => PopularMovieBloc(c.resolve()))
    ..registerFactory((c) => NowPlayingMovieBloc(c.resolve()))
    ..registerFactory((c) => PopularTvShowBloc(c.resolve()))
    ..registerFactory((c) => UpcomingMovieBloc(c.resolve()))
    ..registerFactory((c) => GenreBloc(c.resolve()))
    ..registerFactory((c) => TopRatedMoviesBloc(c.resolve()))
    ..registerFactory((c) => OnAirTvBloc(c.resolve()))
    ..registerFactory((c) => AiringTodayTvShowBloc(c.resolve()))
    ..registerFactory((c) => TopRatedTvShowBloc(c.resolve()))
    ..registerFactory((c) => DetailMovieBloc(c.resolve()))
    ..registerFactory((c) => DetailTvShowBloc(c.resolve()))
    ..registerFactory((c) => PopularMovieByGenreBloc(c.resolve()))
    ..registerFactory((c) => PopularTvShowByGenreBloc(c.resolve()))
    ..registerFactory((c) => SearchMoviesBloc(c.resolve()))
    ..registerFactory((c) => SearchTvShowBloc(c.resolve()))
    ..registerFactory((c) => FavoriteMoviesBloc(c.resolve()))
    ..registerFactory((c) => FavoriteTvShowBloc(c.resolve()));
}
