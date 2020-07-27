import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'backdrops.freezed.dart';

@freezed
abstract class Backdrops with _$Backdrops {
  const factory Backdrops({
    @nullable @required String filePath,
    @nullable @required double height,
    @nullable @required double width,
  }) = _Backdrops;
}
