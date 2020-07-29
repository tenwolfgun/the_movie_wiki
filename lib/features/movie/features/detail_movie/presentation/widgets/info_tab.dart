import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../bloc/detail_movie_bloc.dart';
import '../../../../../../core/extension/extension_helper.dart';

class InfoTab extends StatelessWidget {
  final Loaded state;
  final bool _showTitle;
  final String overview;
  final String releaseDate;
  final NumberFormat _currency = NumberFormat.currency(
    locale: 'en_US',
    symbol: '\$',
  );

  InfoTab({
    Key key,
    this.state,
    bool showTitle,
    this.overview,
    this.releaseDate,
  })  : _showTitle = showTitle,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _showTitle ? const Color(0XFF0C0B10) : null,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: ListView(
              padding: EdgeInsets.only(top: 0),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    child: ExpandablePanel(
                      collapsed: Text(
                        overview,
                        style: TextStyle(
                          color: Colors.white54,
                          height: 1.5,
                          letterSpacing: 0,
                          fontSize: 40.sp,
                        ),
                        textAlign: TextAlign.left,
                        softWrap: true,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        overview,
                        style: TextStyle(
                          color: Colors.white54,
                          height: 1.5,
                          letterSpacing: 0,
                          fontSize: 40.sp,
                        ),
                        textAlign: TextAlign.left,
                        softWrap: true,
                      ),
                      hasIcon: false,
                      tapBodyToCollapse: true,
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        'Original Title',
                        style: TextStyle(
                          color: Colors.white,
                          height: 1.5,
                          fontSize: 40.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        state.detailMovie.originalTitle,
                        style: TextStyle(
                          fontSize: 40.sp,
                          height: 1.5,
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
                              state.detailMovie.status,
                              style: TextStyle(
                                fontSize: 40.sp,
                                height: 1.5,
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
                              state.detailMovie.runtime == null
                                  ? '-'
                                  : '${state.detailMovie.runtime.toInt().toString()} min',
                              style: TextStyle(
                                fontSize: 40.sp,
                                height: 1.5,
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
                              'Release Date',
                              style: TextStyle(
                                color: Colors.white,
                                height: 1.5,
                                fontSize: 40.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              releaseDate == null ? "-" : releaseDate.toDate(),
                              style: TextStyle(
                                fontSize: 40.sp,
                                height: 1.5,
                                color: Colors.white54,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Text(
                              'Original Language',
                              style: TextStyle(
                                color: Colors.white,
                                height: 1.5,
                                fontSize: 40.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              state.detailMovie.originalLanguage,
                              style: TextStyle(
                                fontSize: 40.sp,
                                height: 1.5,
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
                              'Budget',
                              style: TextStyle(
                                color: Colors.white,
                                height: 1.5,
                                fontSize: 40.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              state.detailMovie.budget == null
                                  ? '-'
                                  : '${_currency.format(state.detailMovie.budget).toString()}',
                              style: TextStyle(
                                fontSize: 40.sp,
                                height: 1.5,
                                color: Colors.white54,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Text(
                              'Revenue',
                              style: TextStyle(
                                color: Colors.white,
                                height: 1.5,
                                fontSize: 40.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              state.detailMovie.revenue == null
                                  ? '-'
                                  : '${_currency.format(state.detailMovie.revenue).toString()}',
                              style: TextStyle(
                                fontSize: 40.sp,
                                height: 1.5,
                                color: Colors.white54,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ListTile(
                      title: Text(
                        'Production Countries',
                        style: TextStyle(
                          color: Colors.white,
                          height: 1.5,
                          fontSize: 40.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        '${state.detailMovie.productionCountries.map((i) => i.name).join(', ')}',
                        style: TextStyle(
                          fontSize: 40.sp,
                          height: 1.5,
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
                        '${state.detailMovie.productionCompanies.map((i) => i.name).join(', ')}',
                        style: TextStyle(
                          fontSize: 40.sp,
                          height: 1.5,
                          color: Colors.white54,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
