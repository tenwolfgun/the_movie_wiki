// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../features/movie/features/detail_movie/presentation/pages/more_cast_page.dart';
import '../../features/movie/features/detail_movie/presentation/pages/more_review_page.dart';
import '../../features/movie/features/detail_movie/presentation/pages/more_similar_movie_page.dart';
import '../../features/movie/features/detail_movie/presentation/pages/new_detail_movie_page.dart';
import '../../features/movie/features/detail_movie/presentation/pages/test_detail_movie.dart';
import '../../features/movie/features/discover_movie/domain/entities/results.dart';
import '../../home_page.dart';
import '../entities/credits/cast.dart';
import '../entities/reviews/review_result.dart';

class Routes {
  static const String homePage = '/';
  static const String newDetailMoviePage = '/new-detail-movie-page';
  static const String testDetailMovie = '/test-detail-movie';
  static const String moreSimilarMoviePage = '/more-similar-movie-page';
  static const String moreCastPage = '/more-cast-page';
  static const String moreReviewPage = '/more-review-page';
  static const all = <String>{
    homePage,
    newDetailMoviePage,
    testDetailMovie,
    moreSimilarMoviePage,
    moreCastPage,
    moreReviewPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.newDetailMoviePage, page: NewDetailMoviePage),
    RouteDef(Routes.testDetailMovie, page: TestDetailMovie),
    RouteDef(Routes.moreSimilarMoviePage, page: MoreSimilarMoviePage),
    RouteDef(Routes.moreCastPage, page: MoreCastPage),
    RouteDef(Routes.moreReviewPage, page: MoreReviewPage),
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
    NewDetailMoviePage: (data) {
      final args = data.getArgs<NewDetailMoviePageArguments>(
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
      final args = data.getArgs<TestDetailMovieArguments>(
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
    MoreSimilarMoviePage: (data) {
      final args = data.getArgs<MoreSimilarMoviePageArguments>(
        orElse: () => MoreSimilarMoviePageArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            MoreSimilarMoviePage(
          key: args.key,
          similar: args.similar,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    MoreCastPage: (data) {
      final args = data.getArgs<MoreCastPageArguments>(
        orElse: () => MoreCastPageArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => MoreCastPage(
          key: args.key,
          cast: args.cast,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    MoreReviewPage: (data) {
      final args = data.getArgs<MoreReviewPageArguments>(
        orElse: () => MoreReviewPageArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => MoreReviewPage(
          key: args.key,
          reviews: args.reviews,
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

/// MoreSimilarMoviePage arguments holder class
class MoreSimilarMoviePageArguments {
  final Key key;
  final List<Results> similar;
  MoreSimilarMoviePageArguments({this.key, this.similar});
}

/// MoreCastPage arguments holder class
class MoreCastPageArguments {
  final Key key;
  final List<Cast> cast;
  MoreCastPageArguments({this.key, this.cast});
}

/// MoreReviewPage arguments holder class
class MoreReviewPageArguments {
  final Key key;
  final List<ReviewResult> reviews;
  MoreReviewPageArguments({this.key, this.reviews});
}
