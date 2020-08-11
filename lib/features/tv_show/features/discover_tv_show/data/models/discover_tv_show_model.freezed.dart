// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'discover_tv_show_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DiscoverTvShowModel _$DiscoverTvShowModelFromJson(Map<String, dynamic> json) {
  return _DiscoverTvShowModel.fromJson(json);
}

class _$DiscoverTvShowModelTearOff {
  const _$DiscoverTvShowModelTearOff();

// ignore: unused_element
  _DiscoverTvShowModel call(
      {@required @nullable List<TvShowResultModel> results,
      @required @nullable int page,
      @required @JsonKey(name: 'total_results') @nullable int totalResults,
      @required @JsonKey(name: 'total_pages') @nullable int totalPages}) {
    return _DiscoverTvShowModel(
      results: results,
      page: page,
      totalResults: totalResults,
      totalPages: totalPages,
    );
  }
}

// ignore: unused_element
const $DiscoverTvShowModel = _$DiscoverTvShowModelTearOff();

mixin _$DiscoverTvShowModel {
  @nullable
  List<TvShowResultModel> get results;
  @nullable
  int get page;
  @JsonKey(name: 'total_results')
  @nullable
  int get totalResults;
  @JsonKey(name: 'total_pages')
  @nullable
  int get totalPages;

  Map<String, dynamic> toJson();
  $DiscoverTvShowModelCopyWith<DiscoverTvShowModel> get copyWith;
}

abstract class $DiscoverTvShowModelCopyWith<$Res> {
  factory $DiscoverTvShowModelCopyWith(
          DiscoverTvShowModel value, $Res Function(DiscoverTvShowModel) then) =
      _$DiscoverTvShowModelCopyWithImpl<$Res>;
  $Res call(
      {@nullable List<TvShowResultModel> results,
      @nullable int page,
      @JsonKey(name: 'total_results') @nullable int totalResults,
      @JsonKey(name: 'total_pages') @nullable int totalPages});
}

class _$DiscoverTvShowModelCopyWithImpl<$Res>
    implements $DiscoverTvShowModelCopyWith<$Res> {
  _$DiscoverTvShowModelCopyWithImpl(this._value, this._then);

  final DiscoverTvShowModel _value;
  // ignore: unused_field
  final $Res Function(DiscoverTvShowModel) _then;

  @override
  $Res call({
    Object results = freezed,
    Object page = freezed,
    Object totalResults = freezed,
    Object totalPages = freezed,
  }) {
    return _then(_value.copyWith(
      results: results == freezed
          ? _value.results
          : results as List<TvShowResultModel>,
      page: page == freezed ? _value.page : page as int,
      totalResults:
          totalResults == freezed ? _value.totalResults : totalResults as int,
      totalPages: totalPages == freezed ? _value.totalPages : totalPages as int,
    ));
  }
}

abstract class _$DiscoverTvShowModelCopyWith<$Res>
    implements $DiscoverTvShowModelCopyWith<$Res> {
  factory _$DiscoverTvShowModelCopyWith(_DiscoverTvShowModel value,
          $Res Function(_DiscoverTvShowModel) then) =
      __$DiscoverTvShowModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable List<TvShowResultModel> results,
      @nullable int page,
      @JsonKey(name: 'total_results') @nullable int totalResults,
      @JsonKey(name: 'total_pages') @nullable int totalPages});
}

class __$DiscoverTvShowModelCopyWithImpl<$Res>
    extends _$DiscoverTvShowModelCopyWithImpl<$Res>
    implements _$DiscoverTvShowModelCopyWith<$Res> {
  __$DiscoverTvShowModelCopyWithImpl(
      _DiscoverTvShowModel _value, $Res Function(_DiscoverTvShowModel) _then)
      : super(_value, (v) => _then(v as _DiscoverTvShowModel));

  @override
  _DiscoverTvShowModel get _value => super._value as _DiscoverTvShowModel;

  @override
  $Res call({
    Object results = freezed,
    Object page = freezed,
    Object totalResults = freezed,
    Object totalPages = freezed,
  }) {
    return _then(_DiscoverTvShowModel(
      results: results == freezed
          ? _value.results
          : results as List<TvShowResultModel>,
      page: page == freezed ? _value.page : page as int,
      totalResults:
          totalResults == freezed ? _value.totalResults : totalResults as int,
      totalPages: totalPages == freezed ? _value.totalPages : totalPages as int,
    ));
  }
}

@JsonSerializable()
class _$_DiscoverTvShowModel implements _DiscoverTvShowModel {
  const _$_DiscoverTvShowModel(
      {@required @nullable this.results,
      @required @nullable this.page,
      @required @JsonKey(name: 'total_results') @nullable this.totalResults,
      @required @JsonKey(name: 'total_pages') @nullable this.totalPages});

  factory _$_DiscoverTvShowModel.fromJson(Map<String, dynamic> json) =>
      _$_$_DiscoverTvShowModelFromJson(json);

  @override
  @nullable
  final List<TvShowResultModel> results;
  @override
  @nullable
  final int page;
  @override
  @JsonKey(name: 'total_results')
  @nullable
  final int totalResults;
  @override
  @JsonKey(name: 'total_pages')
  @nullable
  final int totalPages;

  @override
  String toString() {
    return 'DiscoverTvShowModel(results: $results, page: $page, totalResults: $totalResults, totalPages: $totalPages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DiscoverTvShowModel &&
            (identical(other.results, results) ||
                const DeepCollectionEquality()
                    .equals(other.results, results)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.totalResults, totalResults) ||
                const DeepCollectionEquality()
                    .equals(other.totalResults, totalResults)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(results) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(totalResults) ^
      const DeepCollectionEquality().hash(totalPages);

  @override
  _$DiscoverTvShowModelCopyWith<_DiscoverTvShowModel> get copyWith =>
      __$DiscoverTvShowModelCopyWithImpl<_DiscoverTvShowModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DiscoverTvShowModelToJson(this);
  }
}

abstract class _DiscoverTvShowModel implements DiscoverTvShowModel {
  const factory _DiscoverTvShowModel(
          {@required @nullable List<TvShowResultModel> results,
          @required @nullable int page,
          @required @JsonKey(name: 'total_results') @nullable int totalResults,
          @required @JsonKey(name: 'total_pages') @nullable int totalPages}) =
      _$_DiscoverTvShowModel;

  factory _DiscoverTvShowModel.fromJson(Map<String, dynamic> json) =
      _$_DiscoverTvShowModel.fromJson;

  @override
  @nullable
  List<TvShowResultModel> get results;
  @override
  @nullable
  int get page;
  @override
  @JsonKey(name: 'total_results')
  @nullable
  int get totalResults;
  @override
  @JsonKey(name: 'total_pages')
  @nullable
  int get totalPages;
  @override
  _$DiscoverTvShowModelCopyWith<_DiscoverTvShowModel> get copyWith;
}
