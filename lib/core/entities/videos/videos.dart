import 'package:freezed_annotation/freezed_annotation.dart';

import 'video_result.dart';

part 'videos.freezed.dart';

@freezed
abstract class Videos with _$Videos {
  const factory Videos({
    @nullable @required List<VideoResult> results,
  }) = _Videos;
}
