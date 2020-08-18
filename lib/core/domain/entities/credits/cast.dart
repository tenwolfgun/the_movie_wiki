import 'package:freezed_annotation/freezed_annotation.dart';

part 'cast.freezed.dart';

@freezed
abstract class Cast with _$Cast {
  const factory Cast({
    @nullable @required int id,
    @nullable @required String character,
    @nullable @required String name,
    @nullable @required String profilePath,
  }) = _Cast;
}
