import 'package:freezed_annotation/freezed_annotation.dart';

import 'results.dart';

part 'discover_movie.freezed.dart';

@freezed
abstract class DiscoverMovie with _$DiscoverMovie {
  const factory DiscoverMovie({
    @nullable @required List<Results> results,
    @nullable @required int page,
    @nullable @required int totalResults,
    @nullable @required int totalPages,
  }) = _DiscoverMovie;
}
