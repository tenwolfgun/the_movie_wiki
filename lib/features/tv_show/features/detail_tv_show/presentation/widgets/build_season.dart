import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/widget/error_image.dart';
import '../../../../../../core/widget/image_loader.dart';
import '../../domain/entities/seasons.dart';

class BuildSeason extends StatelessWidget {
  final List<Seasons> seasons;

  const BuildSeason({Key key, this.seasons}) : super(key: key);

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
              child: Text(
                'Seasons',
                style: TextStyle(
                  color: Colors.white,
                  height: 1.5,
                  fontSize: 60.sp,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 0),
              height: 200,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 14),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: seasons.length,
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
                        child: CachedNetworkImage(
                          fit: BoxFit.fill,
                          imageUrl: 'https://image.tmdb.org/t/p/w780/' +
                              seasons[i].posterPath.toString(),
                          placeholder: (_, __) {
                            return const ImageLoader();
                          },
                          errorWidget: (_, __, ___) {
                            return const ErrorImage();
                          },
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
