import 'package:freezed_annotation/freezed_annotation.dart';

import 'review_result.dart';

part 'reviews.freezed.dart';

@freezed
abstract class Reviews with _$Reviews {
  const factory Reviews({
    @nullable @required List<ReviewResult> results,
  }) = _Reviews;
}
