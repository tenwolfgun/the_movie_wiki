part of 'discover_tv_show_bloc.dart';
// @immutable
// abstract class DiscoverTvShowEvent {}

@freezed
abstract class DiscoverTvShowEvent with _$DiscoverTvShowEvent {
  const factory DiscoverTvShowEvent.getTvShowData(String type, int page) =
      GetTvShowData;
  const factory DiscoverTvShowEvent.getTvShowDataRetry(String type, int page) =
      GetTvShowDataRetry;
}
