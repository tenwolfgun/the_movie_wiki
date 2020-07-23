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
      {@required @nullable List<ResultModel> results,
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
  List<ResultModel> get results;
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
      {@nullable List<ResultModel> results,
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
      results:
          results == freezed ? _value.results : results as List<ResultModel>,
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
      {@nullable List<ResultModel> results,
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
      results:
          results == freezed ? _value.results : results as List<ResultModel>,
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
  final List<ResultModel> results;
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
          {@required @nullable List<ResultModel> results,
          @required @nullable int page,
          @required @JsonKey(name: 'total_results') @nullable int totalResults,
          @required @JsonKey(name: 'total_pages') @nullable int totalPages}) =
      _$_DiscoverMovieModel;

  factory _DiscoverMovieModel.fromJson(Map<String, dynamic> json) =
      _$_DiscoverMovieModel.fromJson;

  @override
  @nullable
  List<ResultModel> get results;
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

ResultModel _$ResultModelFromJson(Map<String, dynamic> json) {
  return _ResultModel.fromJson(json);
}

class _$ResultModelTearOff {
  const _$ResultModelTearOff();

// ignore: unused_element
  _ResultModel call(
      {@required @nullable double popularity,
      @required @JsonKey(name: 'vote_count') @nullable int voteCount,
      @required @JsonKey(name: 'poster_path') @nullable String posterPath,
      @required @nullable int id,
      @required @nullable String title,
      @required @JsonKey(name: 'vote_average') @nullable double voteAverage,
      @required @nullable String overview,
      @required @JsonKey(name: 'release_date') @nullable String releaseDate}) {
    return _ResultModel(
      popularity: popularity,
      voteCount: voteCount,
      posterPath: posterPath,
      id: id,
      title: title,
      voteAverage: voteAverage,
      overview: overview,
      releaseDate: releaseDate,
    );
  }
}

// ignore: unused_element
const $ResultModel = _$ResultModelTearOff();

mixin _$ResultModel {
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
  String get title;
  @JsonKey(name: 'vote_average')
  @nullable
  double get voteAverage;
  @nullable
  String get overview;
  @JsonKey(name: 'release_date')
  @nullable
  String get releaseDate;

  Map<String, dynamic> toJson();
  $ResultModelCopyWith<ResultModel> get copyWith;
}

abstract class $ResultModelCopyWith<$Res> {
  factory $ResultModelCopyWith(
          ResultModel value, $Res Function(ResultModel) then) =
      _$ResultModelCopyWithImpl<$Res>;
  $Res call(
      {@nullable double popularity,
      @JsonKey(name: 'vote_count') @nullable int voteCount,
      @JsonKey(name: 'poster_path') @nullable String posterPath,
      @nullable int id,
      @nullable String title,
      @JsonKey(name: 'vote_average') @nullable double voteAverage,
      @nullable String overview,
      @JsonKey(name: 'release_date') @nullable String releaseDate});
}

class _$ResultModelCopyWithImpl<$Res> implements $ResultModelCopyWith<$Res> {
  _$ResultModelCopyWithImpl(this._value, this._then);

  final ResultModel _value;
  // ignore: unused_field
  final $Res Function(ResultModel) _then;

  @override
  $Res call({
    Object popularity = freezed,
    Object voteCount = freezed,
    Object posterPath = freezed,
    Object id = freezed,
    Object title = freezed,
    Object voteAverage = freezed,
    Object overview = freezed,
    Object releaseDate = freezed,
  }) {
    return _then(_value.copyWith(
      popularity:
          popularity == freezed ? _value.popularity : popularity as double,
      voteCount: voteCount == freezed ? _value.voteCount : voteCount as int,
      posterPath:
          posterPath == freezed ? _value.posterPath : posterPath as String,
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      voteAverage:
          voteAverage == freezed ? _value.voteAverage : voteAverage as double,
      overview: overview == freezed ? _value.overview : overview as String,
      releaseDate:
          releaseDate == freezed ? _value.releaseDate : releaseDate as String,
    ));
  }
}

abstract class _$ResultModelCopyWith<$Res>
    implements $ResultModelCopyWith<$Res> {
  factory _$ResultModelCopyWith(
          _ResultModel value, $Res Function(_ResultModel) then) =
      __$ResultModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable double popularity,
      @JsonKey(name: 'vote_count') @nullable int voteCount,
      @JsonKey(name: 'poster_path') @nullable String posterPath,
      @nullable int id,
      @nullable String title,
      @JsonKey(name: 'vote_average') @nullable double voteAverage,
      @nullable String overview,
      @JsonKey(name: 'release_date') @nullable String releaseDate});
}

class __$ResultModelCopyWithImpl<$Res> extends _$ResultModelCopyWithImpl<$Res>
    implements _$ResultModelCopyWith<$Res> {
  __$ResultModelCopyWithImpl(
      _ResultModel _value, $Res Function(_ResultModel) _then)
      : super(_value, (v) => _then(v as _ResultModel));

  @override
  _ResultModel get _value => super._value as _ResultModel;

  @override
  $Res call({
    Object popularity = freezed,
    Object voteCount = freezed,
    Object posterPath = freezed,
    Object id = freezed,
    Object title = freezed,
    Object voteAverage = freezed,
    Object overview = freezed,
    Object releaseDate = freezed,
  }) {
    return _then(_ResultModel(
      popularity:
          popularity == freezed ? _value.popularity : popularity as double,
      voteCount: voteCount == freezed ? _value.voteCount : voteCount as int,
      posterPath:
          posterPath == freezed ? _value.posterPath : posterPath as String,
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      voteAverage:
          voteAverage == freezed ? _value.voteAverage : voteAverage as double,
      overview: overview == freezed ? _value.overview : overview as String,
      releaseDate:
          releaseDate == freezed ? _value.releaseDate : releaseDate as String,
    ));
  }
}

@JsonSerializable()
class _$_ResultModel implements _ResultModel {
  const _$_ResultModel(
      {@required @nullable this.popularity,
      @required @JsonKey(name: 'vote_count') @nullable this.voteCount,
      @required @JsonKey(name: 'poster_path') @nullable this.posterPath,
      @required @nullable this.id,
      @required @nullable this.title,
      @required @JsonKey(name: 'vote_average') @nullable this.voteAverage,
      @required @nullable this.overview,
      @required @JsonKey(name: 'release_date') @nullable this.releaseDate});

  factory _$_ResultModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ResultModelFromJson(json);

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
  final String title;
  @override
  @JsonKey(name: 'vote_average')
  @nullable
  final double voteAverage;
  @override
  @nullable
  final String overview;
  @override
  @JsonKey(name: 'release_date')
  @nullable
  final String releaseDate;

  @override
  String toString() {
    return 'ResultModel(popularity: $popularity, voteCount: $voteCount, posterPath: $posterPath, id: $id, title: $title, voteAverage: $voteAverage, overview: $overview, releaseDate: $releaseDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResultModel &&
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
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.voteAverage, voteAverage) ||
                const DeepCollectionEquality()
                    .equals(other.voteAverage, voteAverage)) &&
            (identical(other.overview, overview) ||
                const DeepCollectionEquality()
                    .equals(other.overview, overview)) &&
            (identical(other.releaseDate, releaseDate) ||
                const DeepCollectionEquality()
                    .equals(other.releaseDate, releaseDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(popularity) ^
      const DeepCollectionEquality().hash(voteCount) ^
      const DeepCollectionEquality().hash(posterPath) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(voteAverage) ^
      const DeepCollectionEquality().hash(overview) ^
      const DeepCollectionEquality().hash(releaseDate);

  @override
  _$ResultModelCopyWith<_ResultModel> get copyWith =>
      __$ResultModelCopyWithImpl<_ResultModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ResultModelToJson(this);
  }
}

abstract class _ResultModel implements ResultModel {
  const factory _ResultModel(
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
          String title,
      @required
      @JsonKey(name: 'vote_average')
      @nullable
          double voteAverage,
      @required
      @nullable
          String overview,
      @required
      @JsonKey(name: 'release_date')
      @nullable
          String releaseDate}) = _$_ResultModel;

  factory _ResultModel.fromJson(Map<String, dynamic> json) =
      _$_ResultModel.fromJson;

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
  String get title;
  @override
  @JsonKey(name: 'vote_average')
  @nullable
  double get voteAverage;
  @override
  @nullable
  String get overview;
  @override
  @JsonKey(name: 'release_date')
  @nullable
  String get releaseDate;
  @override
  _$ResultModelCopyWith<_ResultModel> get copyWith;
}
