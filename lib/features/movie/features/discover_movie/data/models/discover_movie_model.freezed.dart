// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'discover_movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DiscoverMovieModel _$DiscoverMovieModelFromJson(Map<String, dynamic> json) {
  return _DiscoverMovieModel.fromJson(json);
}

class _$DiscoverMovieModelTearOff {
  const _$DiscoverMovieModelTearOff();

// ignore: unused_element
  _DiscoverMovieModel call(
      {@required @nullable List<MovieResultModel> results,
      @required @nullable int page,
      @required @JsonKey(name: 'total_results') @nullable int totalResults,
      @required @JsonKey(name: 'total_pages') @nullable int totalPages}) {
    return _DiscoverMovieModel(
      results: results,
      page: page,
      totalResults: totalResults,
      totalPages: totalPages,
    );
  }
}

// ignore: unused_element
const $DiscoverMovieModel = _$DiscoverMovieModelTearOff();

mixin _$DiscoverMovieModel {
  @nullable
  List<MovieResultModel> get results;
  @nullable
  int get page;
  @JsonKey(name: 'total_results')
  @nullable
  int get totalResults;
  @JsonKey(name: 'total_pages')
  @nullable
  int get totalPages;

  Map<String, dynamic> toJson();
  $DiscoverMovieModelCopyWith<DiscoverMovieModel> get copyWith;
}

abstract class $DiscoverMovieModelCopyWith<$Res> {
  factory $DiscoverMovieModelCopyWith(
          DiscoverMovieModel value, $Res Function(DiscoverMovieModel) then) =
      _$DiscoverMovieModelCopyWithImpl<$Res>;
  $Res call(
      {@nullable List<MovieResultModel> results,
      @nullable int page,
      @JsonKey(name: 'total_results') @nullable int totalResults,
      @JsonKey(name: 'total_pages') @nullable int totalPages});
}

class _$DiscoverMovieModelCopyWithImpl<$Res>
    implements $DiscoverMovieModelCopyWith<$Res> {
  _$DiscoverMovieModelCopyWithImpl(this._value, this._then);

  final DiscoverMovieModel _value;
  // ignore: unused_field
  final $Res Function(DiscoverMovieModel) _then;

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
          : results as List<MovieResultModel>,
      page: page == freezed ? _value.page : page as int,
      totalResults:
          totalResults == freezed ? _value.totalResults : totalResults as int,
      totalPages: totalPages == freezed ? _value.totalPages : totalPages as int,
    ));
  }
}

abstract class _$DiscoverMovieModelCopyWith<$Res>
    implements $DiscoverMovieModelCopyWith<$Res> {
  factory _$DiscoverMovieModelCopyWith(
          _DiscoverMovieModel value, $Res Function(_DiscoverMovieModel) then) =
      __$DiscoverMovieModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable List<MovieResultModel> results,
      @nullable int page,
      @JsonKey(name: 'total_results') @nullable int totalResults,
      @JsonKey(name: 'total_pages') @nullable int totalPages});
}

class __$DiscoverMovieModelCopyWithImpl<$Res>
    extends _$DiscoverMovieModelCopyWithImpl<$Res>
    implements _$DiscoverMovieModelCopyWith<$Res> {
  __$DiscoverMovieModelCopyWithImpl(
      _DiscoverMovieModel _value, $Res Function(_DiscoverMovieModel) _then)
      : super(_value, (v) => _then(v as _DiscoverMovieModel));

  @override
  _DiscoverMovieModel get _value => super._value as _DiscoverMovieModel;

  @override
  $Res call({
    Object results = freezed,
    Object page = freezed,
    Object totalResults = freezed,
    Object totalPages = freezed,
  }) {
    return _then(_DiscoverMovieModel(
      results: results == freezed
          ? _value.results
          : results as List<MovieResultModel>,
      page: page == freezed ? _value.page : page as int,
      totalResults:
          totalResults == freezed ? _value.totalResults : totalResults as int,
      totalPages: totalPages == freezed ? _value.totalPages : totalPages as int,
    ));
  }
}

@JsonSerializable()
class _$_DiscoverMovieModel implements _DiscoverMovieModel {
  const _$_DiscoverMovieModel(
      {@required @nullable this.results,
      @required @nullable this.page,
      @required @JsonKey(name: 'total_results') @nullable this.totalResults,
      @required @JsonKey(name: 'total_pages') @nullable this.totalPages});

  factory _$_DiscoverMovieModel.fromJson(Map<String, dynamic> json) =>
      _$_$_DiscoverMovieModelFromJson(json);

  @override
  @nullable
  final List<MovieResultModel> results;
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
    return 'DiscoverMovieModel(results: $results, page: $page, totalResults: $totalResults, totalPages: $totalPages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DiscoverMovieModel &&
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
  _$DiscoverMovieModelCopyWith<_DiscoverMovieModel> get copyWith =>
      __$DiscoverMovieModelCopyWithImpl<_DiscoverMovieModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DiscoverMovieModelToJson(this);
  }
}

abstract class _DiscoverMovieModel implements DiscoverMovieModel {
  const factory _DiscoverMovieModel(
          {@required @nullable List<MovieResultModel> results,
          @required @nullable int page,
          @required @JsonKey(name: 'total_results') @nullable int totalResults,
          @required @JsonKey(name: 'total_pages') @nullable int totalPages}) =
      _$_DiscoverMovieModel;

  factory _DiscoverMovieModel.fromJson(Map<String, dynamic> json) =
      _$_DiscoverMovieModel.fromJson;

  @override
  @nullable
  List<MovieResultModel> get results;
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
  _$DiscoverMovieModelCopyWith<_DiscoverMovieModel> get copyWith;
}
