part of 'detail_movie_bloc.dart';
// @immutable

@freezed
abstract class DetailMovieEvent with _$DetailMovieEvent {
  const factory DetailMovieEvent.getData({@required int id}) = GetData;
}
