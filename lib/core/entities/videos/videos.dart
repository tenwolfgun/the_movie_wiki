import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_movie_wiki/core/entities/videos/video_result.dart';

part 'videos.freezed.dart';

@freezed
abstract class Videos with _$Videos {
  const factory Videos({
    @nullable @required List<VideoResult> results,
  }) = _Videos;
}
