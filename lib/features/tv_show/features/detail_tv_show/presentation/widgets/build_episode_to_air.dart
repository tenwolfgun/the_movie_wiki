import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/extension/extension_helper.dart';
import '../../../../../../core/widget/error_image.dart';
import '../../../../../../core/widget/image_loader.dart';
import '../../domain/entities/episode_to_air.dart';

class BuildEpisodeToAir extends StatelessWidget {
  const BuildEpisodeToAir({
    Key key,
    this.lastEpisodeToAir,
    this.nextEpisodeToAir,
  }) : super(key: key);

  final EpisodeToAir lastEpisodeToAir;
  final EpisodeToAir nextEpisodeToAir;

  Padding buildNextEpisodeToAir() {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Container(
        color: const Color(0XFF0C0B10),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: Text(
                  'Next Episode To Air',
                  style: TextStyle(
                    color: Colors.white,
                    height: 1.5,
                    fontSize: 60.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              AspectRatio(
                aspectRatio: 16 / 9,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: CachedNetworkImage(
                          fit: BoxFit.fill,
                          imageUrl: 'https://image.tmdb.org/t/p/w780/' +
                              nextEpisodeToAir.stillPath.toString(),
                          placeholder: (_, __) {
                            return const ImageLoader();
                          },
                          errorWidget: (_, __, ___) {
                            return const ErrorImage();
                          },
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          color: Colors.black38,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              nextEpisodeToAir.name,
                              style: TextStyle(
                                color: Colors.white,
                                height: 1.5,
                                fontSize: 40.sp,
                                fontWeight: FontWeight.normal,
                              ),
                              textAlign: TextAlign.start,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          color: Colors.black38,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              nextEpisodeToAir.airDate == null ||
                                      nextEpisodeToAir.airDate == ""
                                  ? "-"
                                  : nextEpisodeToAir.airDate.toDate(),
                              style: TextStyle(
                                color: Colors.white,
                                height: 1.5,
                                fontSize: 40.sp,
                                fontWeight: FontWeight.normal,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildLastEpisodeToAir() {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Container(
        color: const Color(0XFF0C0B10),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: Text(
                  'Last Episode To Air',
                  style: TextStyle(
                    color: Colors.white,
                    height: 1.5,
                    fontSize: 60.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              AspectRatio(
                aspectRatio: 16 / 9,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: CachedNetworkImage(
                          fit: BoxFit.fill,
                          imageUrl: 'https://image.tmdb.org/t/p/w780/' +
                              lastEpisodeToAir.stillPath.toString(),
                          placeholder: (_, __) {
                            return const ImageLoader();
                          },
                          errorWidget: (_, __, ___) {
                            return const ErrorImage();
                          },
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          color: Colors.black38,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              lastEpisodeToAir.name,
                              style: TextStyle(
                                color: Colors.white,
                                height: 1.5,
                                fontSize: 40.sp,
                                fontWeight: FontWeight.normal,
                              ),
                              textAlign: TextAlign.start,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          color: Colors.black38,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              lastEpisodeToAir.airDate == null ||
                                      lastEpisodeToAir.airDate == ""
                                  ? "-"
                                  : lastEpisodeToAir.airDate.toDate(),
                              style: TextStyle(
                                color: Colors.white,
                                height: 1.5,
                                fontSize: 40.sp,
                                fontWeight: FontWeight.normal,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        lastEpisodeToAir == null ? const SizedBox() : buildLastEpisodeToAir(),
        nextEpisodeToAir == null ? const SizedBox() : buildNextEpisodeToAir(),
      ],
    );
  }
}
