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
      {@required @nullable List<DiscoverTvShowResultModel> results,
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
  List<DiscoverTvShowResultModel> get results;
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
      {@nullable List<DiscoverTvShowResultModel> results,
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
          : results as List<DiscoverTvShowResultModel>,
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
      {@nullable List<DiscoverTvShowResultModel> results,
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
          : results as List<DiscoverTvShowResultModel>,
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
  final List<DiscoverTvShowResultModel> results;
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
          {@required @nullable List<DiscoverTvShowResultModel> results,
          @required @nullable int page,
          @required @JsonKey(name: 'total_results') @nullable int totalResults,
          @required @JsonKey(name: 'total_pages') @nullable int totalPages}) =
      _$_DiscoverTvShowModel;

  factory _DiscoverTvShowModel.fromJson(Map<String, dynamic> json) =
      _$_DiscoverTvShowModel.fromJson;

  @override
  @nullable
  List<DiscoverTvShowResultModel> get results;
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

DiscoverTvShowResultModel _$DiscoverTvShowResultModelFromJson(
    Map<String, dynamic> json) {
  return _DiscoverTvShowResultModel.fromJson(json);
}

class _$DiscoverTvShowResultModelTearOff {
  const _$DiscoverTvShowResultModelTearOff();

// ignore: unused_element
  _DiscoverTvShowResultModel call(
      {@required
      @nullable
          double popularity,
      @required
      @JsonKey(name: 'vote_count')
      @nullable
          int voteCount,
      @required
      @JsonKey(name: 'poster_path')
      @nullable
          String posterPath,
      @required
      @nullable
          int id,
      @required
      @nullable
          String name,
      @required
      @JsonKey(name: 'vote_average')
      @nullable
          double voteAverage,
      @required
      @nullable
          String overview,
      @required
      @JsonKey(name: 'first_air_date')
      @nullable
          String firstAirDate}) {
    return _DiscoverTvShowResultModel(
      popularity: popularity,
      voteCount: voteCount,
      posterPath: posterPath,
      id: id,
      name: name,
      voteAverage: voteAverage,
      overview: overview,
      firstAirDate: firstAirDate,
    );
  }
}

// ignore: unused_element
const $DiscoverTvShowResultModel = _$DiscoverTvShowResultModelTearOff();

mixin _$DiscoverTvShowResultModel {
  @nullable
  double get popularity;
  @JsonKey(name: 'vote_count')
  @nullable
  int get voteCount;
  @JsonKey(name: 'poster_path')
  @nullable
  String get posterPath;
  @nullable
  int get id;
  @nullable
  String get name;
  @JsonKey(name: 'vote_average')
  @nullable
  double get voteAverage;
  @nullable
  String get overview;
  @JsonKey(name: 'first_air_date')
  @nullable
  String get firstAirDate;

  Map<String, dynamic> toJson();
  $DiscoverTvShowResultModelCopyWith<DiscoverTvShowResultModel> get copyWith;
}

abstract class $DiscoverTvShowResultModelCopyWith<$Res> {
  factory $DiscoverTvShowResultModelCopyWith(DiscoverTvShowResultModel value,
          $Res Function(DiscoverTvShowResultModel) then) =
      _$DiscoverTvShowResultModelCopyWithImpl<$Res>;
  $Res call(
      {@nullable double popularity,
      @JsonKey(name: 'vote_count') @nullable int voteCount,
      @JsonKey(name: 'poster_path') @nullable String posterPath,
      @nullable int id,
      @nullable String name,
      @JsonKey(name: 'vote_average') @nullable double voteAverage,
      @nullable String overview,
      @JsonKey(name: 'first_air_date') @nullable String firstAirDate});
}

class _$DiscoverTvShowResultModelCopyWithImpl<$Res>
    implements $DiscoverTvShowResultModelCopyWith<$Res> {
  _$DiscoverTvShowResultModelCopyWithImpl(this._value, this._then);

  final DiscoverTvShowResultModel _value;
  // ignore: unused_field
  final $Res Function(DiscoverTvShowResultModel) _then;

  @override
  $Res call({
    Object popularity = freezed,
    Object voteCount = freezed,
    Object posterPath = freezed,
    Object id = freezed,
    Object name = freezed,
    Object voteAverage = freezed,
    Object overview = freezed,
    Object firstAirDate = freezed,
  }) {
    return _then(_value.copyWith(
      popularity:
          popularity == freezed ? _value.popularity : popularity as double,
      voteCount: voteCount == freezed ? _value.voteCount : voteCount as int,
      posterPath:
          posterPath == freezed ? _value.posterPath : posterPath as String,
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      voteAverage:
          voteAverage == freezed ? _value.voteAverage : voteAverage as double,
      overview: overview == freezed ? _value.overview : overview as String,
      firstAirDate: firstAirDate == freezed
          ? _value.firstAirDate
          : firstAirDate as String,
    ));
  }
}

abstract class _$DiscoverTvShowResultModelCopyWith<$Res>
    implements $DiscoverTvShowResultModelCopyWith<$Res> {
  factory _$DiscoverTvShowResultModelCopyWith(_DiscoverTvShowResultModel value,
          $Res Function(_DiscoverTvShowResultModel) then) =
      __$DiscoverTvShowResultModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable double popularity,
      @JsonKey(name: 'vote_count') @nullable int voteCount,
      @JsonKey(name: 'poster_path') @nullable String posterPath,
      @nullable int id,
      @nullable String name,
      @JsonKey(name: 'vote_average') @nullable double voteAverage,
      @nullable String overview,
      @JsonKey(name: 'first_air_date') @nullable String firstAirDate});
}

class __$DiscoverTvShowResultModelCopyWithImpl<$Res>
    extends _$DiscoverTvShowResultModelCopyWithImpl<$Res>
    implements _$DiscoverTvShowResultModelCopyWith<$Res> {
  __$DiscoverTvShowResultModelCopyWithImpl(_DiscoverTvShowResultModel _value,
      $Res Function(_DiscoverTvShowResultModel) _then)
      : super(_value, (v) => _then(v as _DiscoverTvShowResultModel));

  @override
  _DiscoverTvShowResultModel get _value =>
      super._value as _DiscoverTvShowResultModel;

  @override
  $Res call({
    Object popularity = freezed,
    Object voteCount = freezed,
    Object posterPath = freezed,
    Object id = freezed,
    Object name = freezed,
    Object voteAverage = freezed,
    Object overview = freezed,
    Object firstAirDate = freezed,
  }) {
    return _then(_DiscoverTvShowResultModel(
      popularity:
          popularity == freezed ? _value.popularity : popularity as double,
      voteCount: voteCount == freezed ? _value.voteCount : voteCount as int,
      posterPath:
          posterPath == freezed ? _value.posterPath : posterPath as String,
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      voteAverage:
          voteAverage == freezed ? _value.voteAverage : voteAverage as double,
      overview: overview == freezed ? _value.overview : overview as String,
      firstAirDate: firstAirDate == freezed
          ? _value.firstAirDate
          : firstAirDate as String,
    ));
  }
}

@JsonSerializable()
class _$_DiscoverTvShowResultModel implements _DiscoverTvShowResultModel {
  const _$_DiscoverTvShowResultModel(
      {@required @nullable this.popularity,
      @required @JsonKey(name: 'vote_count') @nullable this.voteCount,
      @required @JsonKey(name: 'poster_path') @nullable this.posterPath,
      @required @nullable this.id,
      @required @nullable this.name,
      @required @JsonKey(name: 'vote_average') @nullable this.voteAverage,
      @required @nullable this.overview,
      @required @JsonKey(name: 'first_air_date') @nullable this.firstAirDate});

  factory _$_DiscoverTvShowResultModel.fromJson(Map<String, dynamic> json) =>
      _$_$_DiscoverTvShowResultModelFromJson(json);

  @override
  @nullable
  final double popularity;
  @override
  @JsonKey(name: 'vote_count')
  @nullable
  final int voteCount;
  @override
  @JsonKey(name: 'poster_path')
  @nullable
  final String posterPath;
  @override
  @nullable
  final int id;
  @override
  @nullable
  final String name;
  @override
  @JsonKey(name: 'vote_average')
  @nullable
  final double voteAverage;
  @override
  @nullable
  final String overview;
  @override
  @JsonKey(name: 'first_air_date')
  @nullable
  final String firstAirDate;

  @override
  String toString() {
    return 'DiscoverTvShowResultModel(popularity: $popularity, voteCount: $voteCount, posterPath: $posterPath, id: $id, name: $name, voteAverage: $voteAverage, overview: $overview, firstAirDate: $firstAirDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DiscoverTvShowResultModel &&
            (identical(other.popularity, popularity) ||
                const DeepCollectionEquality()
                    .equals(other.popularity, popularity)) &&
            (identical(other.voteCount, voteCount) ||
                const DeepCollectionEquality()
                    .equals(other.voteCount, voteCount)) &&
            (identical(other.posterPath, posterPath) ||
                const DeepCollectionEquality()
                    .equals(other.posterPath, posterPath)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.voteAverage, voteAverage) ||
                const DeepCollectionEquality()
                    .equals(other.voteAverage, voteAverage)) &&
            (identical(other.overview, overview) ||
                const DeepCollectionEquality()
                    .equals(other.overview, overview)) &&
            (identical(other.firstAirDate, firstAirDate) ||
                const DeepCollectionEquality()
                    .equals(other.firstAirDate, firstAirDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(popularity) ^
      const DeepCollectionEquality().hash(voteCount) ^
      const DeepCollectionEquality().hash(posterPath) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(voteAverage) ^
      const DeepCollectionEquality().hash(overview) ^
      const DeepCollectionEquality().hash(firstAirDate);

  @override
  _$DiscoverTvShowResultModelCopyWith<_DiscoverTvShowResultModel>
      get copyWith =>
          __$DiscoverTvShowResultModelCopyWithImpl<_DiscoverTvShowResultModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DiscoverTvShowResultModelToJson(this);
  }
}

abstract class _DiscoverTvShowResultModel implements DiscoverTvShowResultModel {
  const factory _DiscoverTvShowResultModel(
      {@required
      @nullable
          double popularity,
      @required
      @JsonKey(name: 'vote_count')
      @nullable
          int voteCount,
      @required
      @JsonKey(name: 'poster_path')
      @nullable
          String posterPath,
      @required
      @nullable
          int id,
      @required
      @nullable
          String name,
      @required
      @JsonKey(name: 'vote_average')
      @nullable
          double voteAverage,
      @required
      @nullable
          String overview,
      @required
      @JsonKey(name: 'first_air_date')
      @nullable
          String firstAirDate}) = _$_DiscoverTvShowResultModel;

  factory _DiscoverTvShowResultModel.fromJson(Map<String, dynamic> json) =
      _$_DiscoverTvShowResultModel.fromJson;

  @override
  @nullable
  double get popularity;
  @override
  @JsonKey(name: 'vote_count')
  @nullable
  int get voteCount;
  @override
  @JsonKey(name: 'poster_path')
  @nullable
  String get posterPath;
  @override
  @nullable
  int get id;
  @override
  @nullable
  String get name;
  @override
  @JsonKey(name: 'vote_average')
  @nullable
  double get voteAverage;
  @override
  @nullable
  String get overview;
  @override
  @JsonKey(name: 'first_air_date')
  @nullable
  String get firstAirDate;
  @override
  _$DiscoverTvShowResultModelCopyWith<_DiscoverTvShowResultModel> get copyWith;
}
