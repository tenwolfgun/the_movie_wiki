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
      {@required @nullable List<Results> results,
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
  List<Results> get results;
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
      {@nullable List<Results> results,
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
      results: results == freezed ? _value.results : results as List<Results>,
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
      {@nullable List<Results> results,
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
      results: results == freezed ? _value.results : results as List<Results>,
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
  final List<Results> results;
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
      {@required @nullable List<Results> results,
      @required @nullable int page,
      @required @nullable int totalResults,
      @required @nullable int totalPages}) = _$_DiscoverMovie;

  @override
  @nullable
  List<Results> get results;
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
