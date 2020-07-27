import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_result.freezed.dart';

@freezed
abstract class VideoResult with _$VideoResult {
  const factory VideoResult({
    @nullable @required String id,
    @nullable @required String key,
    @nullable @required String name,
    @nullable @required String site,
    @nullable @required double size,
    @nullable @required String type,
  }) = _VideoResult;
}
