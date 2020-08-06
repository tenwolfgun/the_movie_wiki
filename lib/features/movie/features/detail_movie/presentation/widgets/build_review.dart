import 'package:auto_route/auto_route.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_movie_wiki/core/entities/reviews/review_result.dart';
import 'package:the_movie_wiki/core/routes/router.gr.dart';

class BuildReview extends StatelessWidget {
  final List<ReviewResult> reviews;
  final String title;

  const BuildReview({
    Key key,
    this.reviews,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Container(
        color: const Color(0XFF0C0B10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                bottom: 32,
                top: 8,
                right: 16,
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'Reviews',
                      style: TextStyle(
                        color: Colors.white,
                        height: 1.5,
                        fontSize: 60.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  reviews.isNotEmpty
                      ? Expanded(
                          child: InkWell(
                            onTap: () {
                              ExtendedNavigator.of(context).push(
                                Routes.moreReviewPage,
                                arguments: MoreReviewPageArguments(
                                  reviews: reviews,
                                ),
                              );
                            },
                            child: Text(
                              'See all',
                              style: TextStyle(
                                color: const Color(0XFFEB4B1F),
                                height: 1.5,
                                fontSize: 40.sp,
                                fontWeight: FontWeight.normal,
                              ),
                              textAlign: TextAlign.end,
                            ),
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
            ),
            reviews.isNotEmpty
                ? ListTile(
                    contentPadding: const EdgeInsets.only(
                      bottom: 16,
                      left: 16,
                      right: 16,
                    ),
                    isThreeLine: true,
                    title: Text(
                      reviews[0].author.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        height: 1.5,
                        fontSize: 40.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: ExpandablePanel(
                      hasIcon: false,
                      tapBodyToCollapse: true,
                      collapsed: Text(
                        reviews[0].content.toString(),
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
                        reviews[0].content.toString(),
                        style: TextStyle(
                          color: Colors.white54,
                          height: 2,
                          fontSize: 40.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 32),
                    child: Center(
                      child: Text(
                        "We don't have any reviews for $title",
                        style: TextStyle(
                          fontSize: 40.sp,
                          height: 2,
                          color: Colors.white54,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
