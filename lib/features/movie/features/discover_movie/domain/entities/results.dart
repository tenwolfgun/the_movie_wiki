import 'package:freezed_annotation/freezed_annotation.dart';

part 'results.freezed.dart';

@freezed
abstract class Results with _$Results {
  const factory Results({
    @nullable @required double popularity,
    @nullable @required int voteCount,
    @nullable @required String posterPath,
    @nullable @required int id,
    @nullable @required String title,
    @nullable @required double voteAverage,
    @nullable @required String overview,
    @nullable @required String releaseDate,
  }) = _Results;
}
