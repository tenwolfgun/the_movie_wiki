import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/domain/entities/reviews/review_result.dart';

class MoreReviewPage extends StatelessWidget {
  const MoreReviewPage({
    Key key,
    this.reviews,
  }) : super(key: key);

  final List<ReviewResult> reviews;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF0C0B10),
      appBar: AppBar(
        elevation: 8,
      ),
      body: Scrollbar(
        child: ListView.builder(
          padding: const EdgeInsets.only(
            top: 0,
            bottom: 32,
          ),
          shrinkWrap: true,
          itemCount: reviews.length,
          itemBuilder: (_, i) {
            return Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Column(
                children: <Widget>[
                  ListTile(
                    contentPadding: const EdgeInsets.only(
                      bottom: 16,
                      left: 16,
                      right: 16,
                    ),
                    isThreeLine: true,
                    title: Text(
                      reviews[i].author.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        height: 2,
                        fontSize: 40.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: ExpandablePanel(
                      hasIcon: false,
                      tapBodyToCollapse: true,
                      collapsed: Text(
                        reviews[i].content.toString(),
                        style: TextStyle(
                          color: Colors.white54,
                          height: 2,
                          fontSize: 40.sp,
                          fontWeight: FontWeight.normal,
                        ),
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: Text(
                        reviews[i].content.toString(),
                        style: TextStyle(
                          color: Colors.white54,
                          height: 2,
                          fontSize: 40.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.white10,
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
