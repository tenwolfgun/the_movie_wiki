import 'package:freezed_annotation/freezed_annotation.dart';

import '../../entities/reviews/review_result.dart';
import '../../entities/reviews/reviews.dart';

part 'reviews_model.freezed.dart';
part 'reviews_model.g.dart';

@freezed
abstract class ReviewsModel with _$ReviewsModel {
  const factory ReviewsModel({
    @nullable @required List<ReviewResultModel> results,
  }) = _ReviewsModel;

  factory ReviewsModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewsModelFromJson(json);
}

extension ReviewsModelX on ReviewsModel {
  Reviews toReviews() {
    return Reviews(results: results.map((e) => e.toReviewResult()).toList());
  }
}

@freezed
abstract class ReviewResultModel with _$ReviewResultModel {
  const factory ReviewResultModel({
    @nullable @required String author,
    @nullable @required String content,
    @nullable @required String url,
  }) = _ReviewResultModel;

  factory ReviewResultModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewResultModelFromJson(json);
}

extension ReviewResultModelX on ReviewResultModel {
  ReviewResult toReviewResult() {
    return ReviewResult(
      author: author,
      content: content,
      url: url,
    );
  }
}
