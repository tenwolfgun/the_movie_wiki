import 'package:freezed_annotation/freezed_annotation.dart';

import '../../entities/videos/video_result.dart';
import '../../entities/videos/videos.dart';

part 'videos_model.freezed.dart';
part 'videos_model.g.dart';

@freezed
abstract class VideosModel with _$VideosModel {
  const factory VideosModel({
    @nullable @required List<VideoResultModel> results,
  }) = _VideosModel;

  factory VideosModel.fromJson(Map<String, dynamic> json) =>
      _$VideosModelFromJson(json);
}

extension VideosModelX on VideosModel {
  Videos toVideos() {
    return Videos(results: results.map((e) => e.toVideoResult()).toList());
  }
}

@freezed
abstract class VideoResultModel with _$VideoResultModel {
  const factory VideoResultModel({
    @nullable @required String id,
    @nullable @required String key,
    @nullable @required String name,
    @nullable @required String site,
    @nullable @required double size,
    @nullable @required String type,
  }) = _VideoResultModel;

  factory VideoResultModel.fromJson(Map<String, dynamic> json) =>
      _$VideoResultModelFromJson(json);
}

extension VideoResultModelX on VideoResultModel {
  VideoResult toVideoResult() {
    return VideoResult(
      id: id,
      key: key,
      name: name,
      site: site,
      size: size,
      type: type,
    );
  }
}
