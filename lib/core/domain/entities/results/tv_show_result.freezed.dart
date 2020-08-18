// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tv_show_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TvShowResultTearOff {
  const _$TvShowResultTearOff();

// ignore: unused_element
  _TvShowResult call(
      {@required @nullable double popularity,
      @required @nullable int voteCount,
      @required @nullable String posterPath,
      @required @nullable int id,
      @required @nullable String name,
      @required @nullable double voteAverage,
      @required @nullable String overview,
      @required @nullable String firstAirDate}) {
    return _TvShowResult(
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
const $TvShowResult = _$TvShowResultTearOff();

mixin _$TvShowResult {
  @nullable
  double get popularity;
  @nullable
  int get voteCount;
  @nullable
  String get posterPath;
  @nullable
  int get id;
  @nullable
  String get name;
  @nullable
  double get voteAverage;
  @nullable
  String get overview;
  @nullable
  String get firstAirDate;

  $TvShowResultCopyWith<TvShowResult> get copyWith;
}

abstract class $TvShowResultCopyWith<$Res> {
  factory $TvShowResultCopyWith(
          TvShowResult value, $Res Function(TvShowResult) then) =
      _$TvShowResultCopyWithImpl<$Res>;
  $Res call(
      {@nullable double popularity,
      @nullable int voteCount,
      @nullable String posterPath,
      @nullable int id,
      @nullable String name,
      @nullable double voteAverage,
      @nullable String overview,
      @nullable String firstAirDate});
}

class _$TvShowResultCopyWithImpl<$Res> implements $TvShowResultCopyWith<$Res> {
  _$TvShowResultCopyWithImpl(this._value, this._then);

  final TvShowResult _value;
  // ignore: unused_field
  final $Res Function(TvShowResult) _then;

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

abstract class _$TvShowResultCopyWith<$Res>
    implements $TvShowResultCopyWith<$Res> {
  factory _$TvShowResultCopyWith(
          _TvShowResult value, $Res Function(_TvShowResult) then) =
      __$TvShowResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable double popularity,
      @nullable int voteCount,
      @nullable String posterPath,
      @nullable int id,
      @nullable String name,
      @nullable double voteAverage,
      @nullable String overview,
      @nullable String firstAirDate});
}

class __$TvShowResultCopyWithImpl<$Res> extends _$TvShowResultCopyWithImpl<$Res>
    implements _$TvShowResultCopyWith<$Res> {
  __$TvShowResultCopyWithImpl(
      _TvShowResult _value, $Res Function(_TvShowResult) _then)
      : super(_value, (v) => _then(v as _TvShowResult));

  @override
  _TvShowResult get _value => super._value as _TvShowResult;

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
    return _then(_TvShowResult(
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

class _$_TvShowResult implements _TvShowResult {
  const _$_TvShowResult(
      {@required @nullable this.popularity,
      @required @nullable this.voteCount,
      @required @nullable this.posterPath,
      @required @nullable this.id,
      @required @nullable this.name,
      @required @nullable this.voteAverage,
      @required @nullable this.overview,
      @required @nullable this.firstAirDate});

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
  final String name;
  @override
  @nullable
  final double voteAverage;
  @override
  @nullable
  final String overview;
  @override
  @nullable
  final String firstAirDate;

  @override
  String toString() {
    return 'TvShowResult(popularity: $popularity, voteCount: $voteCount, posterPath: $posterPath, id: $id, name: $name, voteAverage: $voteAverage, overview: $overview, firstAirDate: $firstAirDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TvShowResult &&
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
  _$TvShowResultCopyWith<_TvShowResult> get copyWith =>
      __$TvShowResultCopyWithImpl<_TvShowResult>(this, _$identity);
}

abstract class _TvShowResult implements TvShowResult {
  const factory _TvShowResult(
      {@required @nullable double popularity,
      @required @nullable int voteCount,
      @required @nullable String posterPath,
      @required @nullable int id,
      @required @nullable String name,
      @required @nullable double voteAverage,
      @required @nullable String overview,
      @required @nullable String firstAirDate}) = _$_TvShowResult;

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
  String get name;
  @override
  @nullable
  double get voteAverage;
  @override
  @nullable
  String get overview;
  @override
  @nullable
  String get firstAirDate;
  @override
  _$TvShowResultCopyWith<_TvShowResult> get copyWith;
}
