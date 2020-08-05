import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../pages/test_detail_movie.dart';

class BuildOverview extends StatelessWidget {
  const BuildOverview({
    Key key,
    @required this.widget,
  }) : super(key: key);

  final TestDetailMovie widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0XFF0C0B10),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: ExpandablePanel(
          collapsed: Text(
            widget.overview,
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
            widget.overview,
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
    );
  }
}
