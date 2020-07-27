import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_result.freezed.dart';

@freezed
abstract class ReviewResult with _$ReviewResult {
  const factory ReviewResult({
    @nullable @required String author,
    @nullable @required String content,
    @nullable @required String url,
  }) = _ReviewResult;
}
