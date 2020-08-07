import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_movie_wiki/features/tv_show/features/discover_tv_show/domain/entities/discover_tv_show_result.dart';

part 'discover_tv_show.freezed.dart';

@freezed
abstract class DiscoverTvShow with _$DiscoverTvShow {
  const factory DiscoverTvShow({
    @nullable @required List<DiscoverTvShowResult> results,
    @nullable @required int page,
    @nullable @required int totalResults,
    @nullable @required int totalPages,
  }) = _DiscoverTvShow;
}
