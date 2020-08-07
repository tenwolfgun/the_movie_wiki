part of 'discover_movie_bloc.dart';

@freezed
abstract class DiscoverMovieEvent with _$DiscoverMovieEvent {
  const factory DiscoverMovieEvent.getMovieData(String type, int page) =
      GetMovieData;
  const factory DiscoverMovieEvent.getMovieDataRetry(String type, int page) =
      GetMovieDataRetry;
}
