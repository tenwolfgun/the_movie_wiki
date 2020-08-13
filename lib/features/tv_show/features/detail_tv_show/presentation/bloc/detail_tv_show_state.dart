part of 'detail_tv_show_bloc.dart';

@freezed
abstract class DetailTvShowState with _$DetailTvShowState {
  const factory DetailTvShowState.initial() = Inital;
  const factory DetailTvShowState.loading() = Loading;
  const factory DetailTvShowState.loaded({
    @required DetailTvShow detailTvShow,
  }) = Loaded;
  const factory DetailTvShowState.error(String errorMessage) = Error;
}
