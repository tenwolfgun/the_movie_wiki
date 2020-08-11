// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'similar_movies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SimilarMoviesTearOff {
  const _$SimilarMoviesTearOff();

// ignore: unused_element
  _SimilarMovies call({@required @nullable List<MovieResult> results}) {
    return _SimilarMovies(
      results: results,
    );
  }
}

// ignore: unused_element
const $SimilarMovies = _$SimilarMoviesTearOff();

mixin _$SimilarMovies {
  @nullable
  List<MovieResult> get results;

  $SimilarMoviesCopyWith<SimilarMovies> get copyWith;
}

abstract class $SimilarMoviesCopyWith<$Res> {
  factory $SimilarMoviesCopyWith(
          SimilarMovies value, $Res Function(SimilarMovies) then) =
      _$SimilarMoviesCopyWithImpl<$Res>;
  $Res call({@nullable List<MovieResult> results});
}

class _$SimilarMoviesCopyWithImpl<$Res>
    implements $SimilarMoviesCopyWith<$Res> {
  _$SimilarMoviesCopyWithImpl(this._value, this._then);

  final SimilarMovies _value;
  // ignore: unused_field
  final $Res Function(SimilarMovies) _then;

  @override
  $Res call({
    Object results = freezed,
  }) {
    return _then(_value.copyWith(
      results:
          results == freezed ? _value.results : results as List<MovieResult>,
    ));
  }
}

abstract class _$SimilarMoviesCopyWith<$Res>
    implements $SimilarMoviesCopyWith<$Res> {
  factory _$SimilarMoviesCopyWith(
          _SimilarMovies value, $Res Function(_SimilarMovies) then) =
      __$SimilarMoviesCopyWithImpl<$Res>;
  @override
  $Res call({@nullable List<MovieResult> results});
}

class __$SimilarMoviesCopyWithImpl<$Res>
    extends _$SimilarMoviesCopyWithImpl<$Res>
    implements _$SimilarMoviesCopyWith<$Res> {
  __$SimilarMoviesCopyWithImpl(
      _SimilarMovies _value, $Res Function(_SimilarMovies) _then)
      : super(_value, (v) => _then(v as _SimilarMovies));

  @override
  _SimilarMovies get _value => super._value as _SimilarMovies;

  @override
  $Res call({
    Object results = freezed,
  }) {
    return _then(_SimilarMovies(
      results:
          results == freezed ? _value.results : results as List<MovieResult>,
    ));
  }
}

class _$_SimilarMovies implements _SimilarMovies {
  const _$_SimilarMovies({@required @nullable this.results});

  @override
  @nullable
  final List<MovieResult> results;

  @override
  String toString() {
    return 'SimilarMovies(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SimilarMovies &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(results);

  @override
  _$SimilarMoviesCopyWith<_SimilarMovies> get copyWith =>
      __$SimilarMoviesCopyWithImpl<_SimilarMovies>(this, _$identity);
}

abstract class _SimilarMovies implements SimilarMovies {
  const factory _SimilarMovies(
      {@required @nullable List<MovieResult> results}) = _$_SimilarMovies;

  @override
  @nullable
  List<MovieResult> get results;
  @override
  _$SimilarMoviesCopyWith<_SimilarMovies> get copyWith;
}
