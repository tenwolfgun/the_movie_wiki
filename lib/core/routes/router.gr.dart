// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../features/movie/features/detail_movie/presentation/pages/detail_movie_page.dart';
import '../../features/movie/features/detail_movie/presentation/pages/new_detail_movie_page.dart';
import '../../features/movie/features/detail_movie/presentation/pages/test_detail_movie.dart';
import '../../home_page.dart';

class Routes {
  static const String homePage = '/';
  static const String detailMoviePage = '/detail-movie-page';
  static const String newDetailMoviePage = '/new-detail-movie-page';
  static const String testDetailMovie = '/test-detail-movie';
  static const all = <String>{
    homePage,
    detailMoviePage,
    newDetailMoviePage,
    testDetailMovie,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.detailMoviePage, page: DetailMoviePage),
    RouteDef(Routes.newDetailMoviePage, page: NewDetailMoviePage),
    RouteDef(Routes.testDetailMovie, page: TestDetailMovie),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const HomePage(),
        settings: data,
      );
    },
    DetailMoviePage: (data) {
      var args = data.getArgs<DetailMoviePageArguments>(
        orElse: () => DetailMoviePageArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            DetailMoviePage(
          key: args.key,
          id: args.id,
          posterPath: args.posterPath,
          title: args.title,
          rating: args.rating,
          overview: args.overview,
          releaseDate: args.releaseDate,
          s: args.s,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    NewDetailMoviePage: (data) {
      var args = data.getArgs<NewDetailMoviePageArguments>(
        orElse: () => NewDetailMoviePageArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            NewDetailMoviePage(
          key: args.key,
          id: args.id,
          posterPath: args.posterPath,
          title: args.title,
          rating: args.rating,
          overview: args.overview,
          releaseDate: args.releaseDate,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    TestDetailMovie: (data) {
      var args = data.getArgs<TestDetailMovieArguments>(
        orElse: () => TestDetailMovieArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            TestDetailMovie(
          key: args.key,
          id: args.id,
          posterPath: args.posterPath,
          title: args.title,
          rating: args.rating,
          overview: args.overview,
          releaseDate: args.releaseDate,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// DetailMoviePage arguments holder class
class DetailMoviePageArguments {
  final Key key;
  final int id;
  final String posterPath;
  final String title;
  final double rating;
  final String overview;
  final String releaseDate;
  final dynamic s;
  DetailMoviePageArguments(
      {this.key,
      this.id,
      this.posterPath,
      this.title,
      this.rating,
      this.overview,
      this.releaseDate,
      this.s});
}

/// NewDetailMoviePage arguments holder class
class NewDetailMoviePageArguments {
  final Key key;
  final int id;
  final String posterPath;
  final String title;
  final double rating;
  final String overview;
  final String releaseDate;
  NewDetailMoviePageArguments(
      {this.key,
      this.id,
      this.posterPath,
      this.title,
      this.rating,
      this.overview,
      this.releaseDate});
}

/// TestDetailMovie arguments holder class
class TestDetailMovieArguments {
  final Key key;
  final int id;
  final String posterPath;
  final String title;
  final double rating;
  final String overview;
  final String releaseDate;
  TestDetailMovieArguments(
      {this.key,
      this.id,
      this.posterPath,
      this.title,
      this.rating,
      this.overview,
      this.releaseDate});
}
