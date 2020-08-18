import 'package:freezed_annotation/freezed_annotation.dart';

part 'posters.freezed.dart';

@freezed
abstract class Posters with _$Posters {
  const factory Posters({
    @nullable @required String filePath,
    @nullable @required double height,
    @nullable @required double width,
  }) = _Posters;
}
