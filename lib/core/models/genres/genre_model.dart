import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_movie_wiki/core/entities/genre/genre.dart';

part 'genre_model.freezed.dart';
part 'genre_model.g.dart';

@freezed
abstract class GenreModel with _$GenreModel {
  const factory GenreModel({
    @nullable @required int id,
    @nullable @required String name,
  }) = _GenreModel;

  factory GenreModel.fromJson(Map<String, dynamic> json) =>
      _$GenreModelFromJson(json);
}

extension GenreModelX on GenreModel {
  Genre toDomain() {
    return Genre(
      id: id,
      name: name,
    );
  }
}
