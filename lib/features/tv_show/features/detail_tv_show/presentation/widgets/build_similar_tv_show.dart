import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/entities/results/tv_show_result.dart';
import '../../../../../../core/routes/router.gr.dart';
import '../../../../../../core/widget/error_image.dart';
import '../../../../../../core/widget/image_loader.dart';

class BuildSimilarTvShow extends StatelessWidget {
  const BuildSimilarTvShow({
    Key key,
    this.similar,
  }) : super(key: key);

  final List<TvShowResult> similar;

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
                      'More like this',
                      style: TextStyle(
                        color: Colors.white,
                        height: 1.5,
                        fontSize: 60.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  similar.isNotEmpty
                      ? Expanded(
                          child: InkWell(
                            onTap: () {
                              // ExtendedNavigator.of(context).push(
                              //   Routes.moreSimilarMoviePage,
                              //   arguments: MoreSimilarMoviePageArguments(
                              //     similar: similar,
                              //   ),
                              // );
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
            Container(
              padding: const EdgeInsets.only(left: 0),
              height: 200,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 14),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: similar.take(10).length,
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      right: 8,
                      bottom: 16,
                    ),
                    child: AspectRatio(
                      aspectRatio: 0.7,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: InkWell(
                          onTap: () {
                            ExtendedNavigator.of(context).push(
                              Routes.detailTvShowPage,
                              arguments: DetailTvShowPageArguments(
                                id: similar[i].id,
                                name: similar[i].name,
                                posterPath: similar[i].posterPath,
                                rating: similar[i].voteAverage,
                                overview: similar[i].overview ?? '',
                                firstAirDate: similar[i].firstAirDate,
                              ),
                            );
                          },
                          child: CachedNetworkImage(
                            fit: BoxFit.fill,
                            imageUrl: 'https://image.tmdb.org/t/p/w780/' +
                                similar[i].posterPath.toString(),
                            placeholder: (_, __) {
                              return const ImageLoader();
                            },
                            errorWidget: (_, __, ___) {
                              return const ErrorImage();
                            },
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
