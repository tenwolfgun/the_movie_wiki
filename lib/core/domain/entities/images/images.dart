import 'package:freezed_annotation/freezed_annotation.dart';

import 'backdrops.dart';
import 'posters.dart';

part 'images.freezed.dart';

@freezed
abstract class Images with _$Images {
  const factory Images({
    @nullable @required List<Backdrops> backdrops,
    @nullable @required List<Posters> posters,
  }) = _Images;
}
