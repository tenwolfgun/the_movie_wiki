import 'package:freezed_annotation/freezed_annotation.dart';

part 'episode_to_air.freezed.dart';

@freezed
abstract class EpisodeToAir with _$EpisodeToAir {
  const factory EpisodeToAir({
    @nullable @required String airDate,
    @nullable @required int episodeNumber,
    @nullable @required String name,
    @nullable @required String overview,
    @nullable @required int seasonNumber,
    @nullable @required String stillPath,
  }) = _EpisodeToAir;
}
