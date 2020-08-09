import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';

import '../../../../../../injection.dart';
import '../bloc/discover_tv_show_bloc.dart';
import 'airing_today_tv_show_page.dart';
import 'on_air_tv_show_page.dart';
import 'popular_tv_show_page.dart';
import 'top_rated_tv_show_page.dart';

class TvShowPage extends StatefulWidget {
  const TvShowPage({Key key}) : super(key: key);

  @override
  _TvShowPageState createState() => _TvShowPageState();
}

class _TvShowPageState extends State<TvShowPage> {
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
                Tab(text: "AIRING TODAY"),
                Tab(text: "ON TV"),
                Tab(text: "POPULAR"),
                Tab(text: "TOP RATED"),
              ],
            ),
          ),
        ),
        body: TabBarView(
          physics: const ScrollPhysics(),
          children: [
            BlocProvider(
              create: (_) => getIt<DiscoverTvShowBloc>()
                ..add(
                  DiscoverTvShowEvent.getTvShowData('airing_today', 1),
                ),
              child: const AiringTodayTvShowPage(),
            ),
            BlocProvider(
              create: (_) => getIt<DiscoverTvShowBloc>()
                ..add(
                  DiscoverTvShowEvent.getTvShowData('on_the_air', 1),
                ),
              child: const OnAirTvShowPage(),
            ),
            BlocProvider(
              create: (_) => getIt<DiscoverTvShowBloc>()
                ..add(
                  DiscoverTvShowEvent.getTvShowData('popular', 1),
                ),
              child: const PopularTvShowPage(),
            ),
            BlocProvider(
              create: (_) => getIt<DiscoverTvShowBloc>()
                ..add(
                  DiscoverTvShowEvent.getTvShowData('top_rated', 1),
                ),
              child: const TopRatedTvShowPage(),
            ),
          ],
        ),
      ),
    );
  }
}
