import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:the_movie_wiki/features/movie/features/detail_movie/presentation/pages/more_cast_page.dart';
import 'package:the_movie_wiki/features/movie/features/detail_movie/presentation/pages/more_review_page.dart';

import '../../features/movie/features/detail_movie/presentation/pages/detail_movie_page.dart';
import '../../features/movie/features/detail_movie/presentation/pages/new_detail_movie_page.dart';
import '../../features/movie/features/detail_movie/presentation/pages/test_detail_movie.dart';
import '../../features/movie/features/detail_movie/presentation/pages/more_similar_movie_page.dart';
import '../../home_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: HomePage, initial: true),
    CustomRoute(
      page: DetailMoviePage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 400,
    ),
    CustomRoute(
      page: NewDetailMoviePage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 400,
    ),
    CustomRoute(
      page: TestDetailMovie,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 400,
    ),
    CustomRoute(
      page: MoreSimilarMoviePage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 400,
    ),
    CustomRoute(
      page: MoreCastPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 400,
    ),
    CustomRoute(
      page: MoreReviewPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 400,
    ),
  ],
)
class $Router {}
