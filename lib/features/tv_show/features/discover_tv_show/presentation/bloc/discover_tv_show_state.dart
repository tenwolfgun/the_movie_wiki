part of 'discover_tv_show_bloc.dart';

@freezed
abstract class DiscoverTvShowState with _$DiscoverTvShowState {
  factory DiscoverTvShowState.initial() = Initial;
  factory DiscoverTvShowState.loading() = Loading;
  factory DiscoverTvShowState.loaded({
    List<TvShowResult> results,
    bool isEndOfResult,
    bool isLoading,
    bool isError,
    String errorMessage,
    bool isLoadData,
  }) = Loaded;
  factory DiscoverTvShowState.error(String errorMessage) = Error;
}
