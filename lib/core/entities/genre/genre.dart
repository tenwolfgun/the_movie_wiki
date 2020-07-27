import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre.freezed.dart';

@freezed
abstract class Genre with _$Genre {
  const factory Genre({
    @nullable @required int id,
    @nullable @required String name,
  }) = _Genre;
}
