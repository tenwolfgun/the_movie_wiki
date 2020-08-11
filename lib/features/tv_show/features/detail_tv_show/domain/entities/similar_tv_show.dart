import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/entities/results/tv_show_result.dart';

part 'similar_tv_show.freezed.dart';

@freezed
abstract class SimilarTvShow with _$SimilarTvShow {
  const factory SimilarTvShow({
    @nullable @required List<TvShowResult> results,
  }) = _SimilarTvShow;
}
