import 'package:flutter/material.dart';

import '../../domain/entities/episode_to_air.dart';
import 'episode_to_air_widget.dart';

class BuildEpisodeToAir extends StatelessWidget {
  const BuildEpisodeToAir({
    Key key,
    this.lastEpisodeToAir,
    this.nextEpisodeToAir,
  }) : super(key: key);

  final EpisodeToAir lastEpisodeToAir;
  final EpisodeToAir nextEpisodeToAir;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        lastEpisodeToAir == null
            ? const SizedBox()
            : EpisodeToAirWidget(
                lastEpisodeToAir: lastEpisodeToAir,
              ),
        nextEpisodeToAir == null
            ? const SizedBox()
            : EpisodeToAirWidget(
                nextEpisodeToAir: nextEpisodeToAir,
              ),
      ],
    );
  }
}
