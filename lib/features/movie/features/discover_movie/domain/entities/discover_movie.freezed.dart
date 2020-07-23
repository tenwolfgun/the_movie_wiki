// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'discover_movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DiscoverMovieTearOff {
  const _$DiscoverMovieTearOff();

// ignore: unused_element
  _DiscoverMovie call(
      {@required @nullable List<Result> results,
      @required @nullable int page,
      @required @nullable int totalResults,
      @required @nullable int totalPages}) {
    return _DiscoverMovie(
      results: results,
      page: page,
      totalResults: totalResults,
      totalPages: totalPages,
    );
  }
}

// ignore: unused_element
const $DiscoverMovie = _$DiscoverMovieTearOff();

mixin _$DiscoverMovie {
  @nullable
  List<Result> get results;
  @nullable
  int get page;
  @nullable
  int get totalResults;
  @nullable
  int get totalPages;

  $DiscoverMovieCopyWith<DiscoverMovie> get copyWith;
}

abstract class $DiscoverMovieCopyWith<$Res> {
  factory $DiscoverMovieCopyWith(
          DiscoverMovie value, $Res Function(DiscoverMovie) then) =
      _$DiscoverMovieCopyWithImpl<$Res>;
  $Res call(
      {@nullable List<Result> results,
      @nullable int page,
      @nullable int totalResults,
      @nullable int totalPages});
}

class _$DiscoverMovieCopyWithImpl<$Res>
    implements $DiscoverMovieCopyWith<$Res> {
  _$DiscoverMovieCopyWithImpl(this._value, this._then);

  final DiscoverMovie _value;
  // ignore: unused_field
  final $Res Function(DiscoverMovie) _then;

  @override
  $Res call({
    Object results = freezed,
    Object page = freezed,
    Object totalResults = freezed,
    Object totalPages = freezed,
  }) {
    return _then(_value.copyWith(
      results: results == freezed ? _value.results : results as List<Result>,
      page: page == freezed ? _value.page : page as int,
      totalResults:
          totalResults == freezed ? _value.totalResults : totalResults as int,
      totalPages: totalPages == freezed ? _value.totalPages : totalPages as int,
    ));
  }
}

abstract class _$DiscoverMovieCopyWith<$Res>
    implements $DiscoverMovieCopyWith<$Res> {
  factory _$DiscoverMovieCopyWith(
          _DiscoverMovie value, $Res Function(_DiscoverMovie) then) =
      __$DiscoverMovieCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable List<Result> results,
      @nullable int page,
      @nullable int totalResults,
      @nullable int totalPages});
}

class __$DiscoverMovieCopyWithImpl<$Res>
    extends _$DiscoverMovieCopyWithImpl<$Res>
    implements _$DiscoverMovieCopyWith<$Res> {
  __$DiscoverMovieCopyWithImpl(
      _DiscoverMovie _value, $Res Function(_DiscoverMovie) _then)
      : super(_value, (v) => _then(v as _DiscoverMovie));

  @override
  _DiscoverMovie get _value => super._value as _DiscoverMovie;

  @override
  $Res call({
    Object results = freezed,
    Object page = freezed,
    Object totalResults = freezed,
    Object totalPages = freezed,
  }) {
    return _then(_DiscoverMovie(
      results: results == freezed ? _value.results : results as List<Result>,
      page: page == freezed ? _value.page : page as int,
      totalResults:
          totalResults == freezed ? _value.totalResults : totalResults as int,
      totalPages: totalPages == freezed ? _value.totalPages : totalPages as int,
    ));
  }
}

class _$_DiscoverMovie implements _DiscoverMovie {
  const _$_DiscoverMovie(
      {@required @nullable this.results,
      @required @nullable this.page,
      @required @nullable this.totalResults,
      @required @nullable this.totalPages});

  @override
  @nullable
  final List<Result> results;
  @override
  @nullable
  final int page;
  @override
  @nullable
  final int totalResults;
  @override
  @nullable
  final int totalPages;

  @override
  String toString() {
    return 'DiscoverMovie(results: $results, page: $page, totalResults: $totalResults, totalPages: $totalPages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DiscoverMovie &&
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
  _$DiscoverMovieCopyWith<_DiscoverMovie> get copyWith =>
      __$DiscoverMovieCopyWithImpl<_DiscoverMovie>(this, _$identity);
}

abstract class _DiscoverMovie implements DiscoverMovie {
  const factory _DiscoverMovie(
      {@required @nullable List<Result> results,
      @required @nullable int page,
      @required @nullable int totalResults,
      @required @nullable int totalPages}) = _$_DiscoverMovie;

  @override
  @nullable
  List<Result> get results;
  @override
  @nullable
  int get page;
  @override
  @nullable
  int get totalResults;
  @override
  @nullable
  int get totalPages;
  @override
  _$DiscoverMovieCopyWith<_DiscoverMovie> get copyWith;
}

class _$ResultTearOff {
  const _$ResultTearOff();

// ignore: unused_element
  _Result call(
      {@required @nullable double popularity,
      @required @nullable int voteCount,
      @required @nullable String posterPath,
      @required @nullable int id,
      @required @nullable String title,
      @required @nullable double voteAverage,
      @required @nullable String overview,
      @required @nullable String releaseDate}) {
    return _Result(
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
const $Result = _$ResultTearOff();

mixin _$Result {
  @nullable
  double get popularity;
  @nullable
  int get voteCount;
  @nullable
  String get posterPath;
  @nullable
  int get id;
  @nullable
  String get title;
  @nullable
  double get voteAverage;
  @nullable
  String get overview;
  @nullable
  String get releaseDate;

  $ResultCopyWith<Result> get copyWith;
}

abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res>;
  $Res call(
      {@nullable double popularity,
      @nullable int voteCount,
      @nullable String posterPath,
      @nullable int id,
      @nullable String title,
      @nullable double voteAverage,
      @nullable String overview,
      @nullable String releaseDate});
}

class _$ResultCopyWithImpl<$Res> implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  final Result _value;
  // ignore: unused_field
  final $Res Function(Result) _then;

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

abstract class _$ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$ResultCopyWith(_Result value, $Res Function(_Result) then) =
      __$ResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable double popularity,
      @nullable int voteCount,
      @nullable String posterPath,
      @nullable int id,
      @nullable String title,
      @nullable double voteAverage,
      @nullable String overview,
      @nullable String releaseDate});
}

class __$ResultCopyWithImpl<$Res> extends _$ResultCopyWithImpl<$Res>
    implements _$ResultCopyWith<$Res> {
  __$ResultCopyWithImpl(_Result _value, $Res Function(_Result) _then)
      : super(_value, (v) => _then(v as _Result));

  @override
  _Result get _value => super._value as _Result;

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
    return _then(_Result(
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

class _$_Result implements _Result {
  const _$_Result(
      {@required @nullable this.popularity,
      @required @nullable this.voteCount,
      @required @nullable this.posterPath,
      @required @nullable this.id,
      @required @nullable this.title,
      @required @nullable this.voteAverage,
      @required @nullable this.overview,
      @required @nullable this.releaseDate});

  @override
  @nullable
  final double popularity;
  @override
  @nullable
  final int voteCount;
  @override
  @nullable
  final String posterPath;
  @override
  @nullable
  final int id;
  @override
  @nullable
  final String title;
  @override
  @nullable
  final double voteAverage;
  @override
  @nullable
  final String overview;
  @override
  @nullable
  final String releaseDate;

  @override
  String toString() {
    return 'Result(popularity: $popularity, voteCount: $voteCount, posterPath: $posterPath, id: $id, title: $title, voteAverage: $voteAverage, overview: $overview, releaseDate: $releaseDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Result &&
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
  _$ResultCopyWith<_Result> get copyWith =>
      __$ResultCopyWithImpl<_Result>(this, _$identity);
}

abstract class _Result implements Result {
  const factory _Result(
      {@required @nullable double popularity,
      @required @nullable int voteCount,
      @required @nullable String posterPath,
      @required @nullable int id,
      @required @nullable String title,
      @required @nullable double voteAverage,
      @required @nullable String overview,
      @required @nullable String releaseDate}) = _$_Result;

  @override
  @nullable
  double get popularity;
  @override
  @nullable
  int get voteCount;
  @override
  @nullable
  String get posterPath;
  @override
  @nullable
  int get id;
  @override
  @nullable
  String get title;
  @override
  @nullable
  double get voteAverage;
  @override
  @nullable
  String get overview;
  @override
  @nullable
  String get releaseDate;
  @override
  _$ResultCopyWith<_Result> get copyWith;
}
