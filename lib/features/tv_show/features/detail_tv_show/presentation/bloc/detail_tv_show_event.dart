part of 'detail_tv_show_bloc.dart';

@freezed
abstract class DetailTvShowEvent with _$DetailTvShowEvent {
  const factory DetailTvShowEvent.getData({@required int id}) = GetData;
}
