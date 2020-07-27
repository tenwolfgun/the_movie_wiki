import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_movie_wiki/core/entities/reviews/review_result.dart';

part 'reviews.freezed.dart';

@freezed
abstract class Reviews with _$Reviews {
  const factory Reviews({
    @nullable @required List<ReviewResult> results,
  }) = _Reviews;
}
