import 'package:freezed_annotation/freezed_annotation.dart';

part 'seasons.freezed.dart';

@freezed
abstract class Seasons with _$Seasons {
  const factory Seasons({
    @nullable @required String airDate,
    @nullable @required int episodeCount,
    @nullable @required int id,
    @nullable @required String name,
    @nullable @required String overview,
    @nullable @required String posterPath,
    @nullable @required int sesonNumber,
  }) = _Seasons;
}
