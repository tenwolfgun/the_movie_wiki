import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/extension/extension_helper.dart';
import '../bloc/detail_tv_show_bloc.dart';

class BuildTvShowInfo extends StatelessWidget {
  const BuildTvShowInfo({
    Key key,
    this.state,
    this.firstAirDate,
  }) : super(key: key);

  final String firstAirDate;
  final Loaded state;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Container(
        color: const Color(0XFF0C0B10),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text(
                'Original Name',
                style: TextStyle(
                  color: Colors.white,
                  height: 1.5,
                  fontSize: 40.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                state.detailTvShow.originalName,
                style: TextStyle(
                  fontSize: 40.sp,
                  height: 2,
                  color: Colors.white54,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: ListTile(
                    title: Text(
                      'Status',
                      style: TextStyle(
                        color: Colors.white,
                        height: 1.5,
                        fontSize: 40.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      state.detailTvShow.status,
                      style: TextStyle(
                        fontSize: 40.sp,
                        height: 2,
                        color: Colors.white54,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      'Runtime',
                      style: TextStyle(
                        color: Colors.white,
                        height: 1.5,
                        fontSize: 40.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      state.detailTvShow.episodeRunTime.isEmpty
                          ? '-'
                          : '${state.detailTvShow.episodeRunTime.join(" min, ").toString()}',
                      style: TextStyle(
                        fontSize: 40.sp,
                        height: 2,
                        color: Colors.white54,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: ListTile(
                    title: Text(
                      'First Air Date',
                      style: TextStyle(
                        color: Colors.white,
                        height: 1.5,
                        fontSize: 40.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      firstAirDate == null || firstAirDate == ""
                          ? "-"
                          : firstAirDate.toDate(),
                      style: TextStyle(
                        fontSize: 40.sp,
                        height: 2,
                        color: Colors.white54,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      'Last Air Date',
                      style: TextStyle(
                        color: Colors.white,
                        height: 1.5,
                        fontSize: 40.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      state.detailTvShow.lastAirDate == null ||
                              firstAirDate == ""
                          ? "-"
                          : state.detailTvShow.lastAirDate.toDate(),
                      style: TextStyle(
                        fontSize: 40.sp,
                        height: 2,
                        color: Colors.white54,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: ListTile(
                    title: Text(
                      'Number Of Episodes',
                      style: TextStyle(
                        color: Colors.white,
                        height: 1.5,
                        fontSize: 40.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      state.detailTvShow.inProduction == null
                          ? '-'
                          : '${state.detailTvShow.numberOfEpisodes.toString()}',
                      style: TextStyle(
                        fontSize: 40.sp,
                        height: 2,
                        color: Colors.white54,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      'Number Of Seasons',
                      style: TextStyle(
                        color: Colors.white,
                        height: 1.5,
                        fontSize: 40.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      state.detailTvShow.seasons == null
                          ? '-'
                          : '${state.detailTvShow.numberOfSeasons.toString()}',
                      style: TextStyle(
                        fontSize: 40.sp,
                        height: 2,
                        color: Colors.white54,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ListTile(
              title: Text(
                'Networks',
                style: TextStyle(
                  color: Colors.white,
                  height: 1.5,
                  fontSize: 40.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                '${state.detailTvShow.networks.map((i) => i.name).join(', ')}',
                style: TextStyle(
                  fontSize: 40.sp,
                  height: 2,
                  color: Colors.white54,
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Production Companies',
                style: TextStyle(
                  color: Colors.white,
                  height: 1.5,
                  fontSize: 40.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                '${state.detailTvShow.productionCompanies.map((i) => i.name).join(', ')}',
                style: TextStyle(
                  fontSize: 40.sp,
                  height: 2,
                  color: Colors.white54,
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Genres',
                style: TextStyle(
                  color: Colors.white,
                  height: 1.5,
                  fontSize: 40.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                '${state.detailTvShow.genres.map((i) => i.name).join(', ')}',
                style: TextStyle(
                  fontSize: 40.sp,
                  height: 2,
                  color: Colors.white54,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
