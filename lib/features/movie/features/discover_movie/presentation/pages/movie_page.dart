import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import 'package:the_movie_wiki/features/movie/features/discover_movie/presentation/pages/top_rated_movie_page.dart';
import 'package:the_movie_wiki/features/movie/features/discover_movie/presentation/pages/upcoming_movie_page.dart';

import '../../../../../../injection.dart';
import '../bloc/discover_movie_bloc.dart';
import 'now_playing_movie_page.dart';
import 'popular_movie_page.dart';

class MoviePage extends StatefulWidget {
  const MoviePage({Key key}) : super(key: key);

  @override
  _MoviePageState createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          brightness: Brightness.dark,
          elevation: 8,
          backgroundColor: const Color(0XFF0D0C11),
          title: Material(
            color: const Color(0XFF0D0C11),
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              labelStyle: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontSize: 40.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              isScrollable: true,
              unselectedLabelColor: Colors.white54,
              labelColor: const Color(0XFFEEEEEE),
              indicator: const MD2Indicator(
                indicatorHeight: 3,
                indicatorColor: const Color(0XFFEB4B1F),
                indicatorSize: MD2IndicatorSize.normal,
              ),
              tabs: const <Tab>[
                Tab(text: "IN THEATERS"),
                Tab(text: "POPULAR"),
                Tab(text: "TOP RATED"),
                Tab(text: "UPCOMING"),
              ],
            ),
          ),
        ),
        body: TabBarView(
          physics: const ScrollPhysics(),
          children: [
            BlocProvider(
              create: (_) => getIt<DiscoverMovieBloc>()
                ..add(
                  DiscoverMovieEvent.getMovieData('now_playing', 1),
                ),
              child: const NowPlayingMoviePage(),
            ),
            BlocProvider(
              create: (_) => getIt<DiscoverMovieBloc>()
                ..add(
                  DiscoverMovieEvent.getMovieData('popular', 1),
                ),
              child: const PopularMoviePage(),
            ),
            BlocProvider(
              create: (_) => getIt<DiscoverMovieBloc>()
                ..add(
                  DiscoverMovieEvent.getMovieData('top_rated', 1),
                ),
              child: const TopRatedMoviePage(),
            ),
            BlocProvider(
              create: (_) => getIt<DiscoverMovieBloc>()
                ..add(
                  DiscoverMovieEvent.getMovieData('upcoming', 1),
                ),
              child: const UpcomingMoviePage(),
            ),
          ],
        ),
      ),
    );
  }
}
