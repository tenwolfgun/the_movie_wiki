import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/entities/results/tv_show_result.dart';

part 'discover_tv_show.freezed.dart';

@freezed
abstract class DiscoverTvShow with _$DiscoverTvShow {
  const factory DiscoverTvShow({
    @nullable @required List<TvShowResult> results,
    @nullable @required int page,
    @nullable @required int totalResults,
    @nullable @required int totalPages,
  }) = _DiscoverTvShow;
}
