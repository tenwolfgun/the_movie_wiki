// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ResultsTearOff {
  const _$ResultsTearOff();

// ignore: unused_element
  _Results call(
      {@required @nullable double popularity,
      @required @nullable int voteCount,
      @required @nullable String posterPath,
      @required @nullable int id,
      @required @nullable String title,
      @required @nullable double voteAverage,
      @required @nullable String overview,
      @required @nullable String releaseDate}) {
    return _Results(
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
const $Results = _$ResultsTearOff();

mixin _$Results {
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

  $ResultsCopyWith<Results> get copyWith;
}

abstract class $ResultsCopyWith<$Res> {
  factory $ResultsCopyWith(Results value, $Res Function(Results) then) =
      _$ResultsCopyWithImpl<$Res>;
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

class _$ResultsCopyWithImpl<$Res> implements $ResultsCopyWith<$Res> {
  _$ResultsCopyWithImpl(this._value, this._then);

  final Results _value;
  // ignore: unused_field
  final $Res Function(Results) _then;

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

abstract class _$ResultsCopyWith<$Res> implements $ResultsCopyWith<$Res> {
  factory _$ResultsCopyWith(_Results value, $Res Function(_Results) then) =
      __$ResultsCopyWithImpl<$Res>;
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

class __$ResultsCopyWithImpl<$Res> extends _$ResultsCopyWithImpl<$Res>
    implements _$ResultsCopyWith<$Res> {
  __$ResultsCopyWithImpl(_Results _value, $Res Function(_Results) _then)
      : super(_value, (v) => _then(v as _Results));

  @override
  _Results get _value => super._value as _Results;

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
    return _then(_Results(
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

class _$_Results implements _Results {
  const _$_Results(
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
    return 'Results(popularity: $popularity, voteCount: $voteCount, posterPath: $posterPath, id: $id, title: $title, voteAverage: $voteAverage, overview: $overview, releaseDate: $releaseDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Results &&
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
  _$ResultsCopyWith<_Results> get copyWith =>
      __$ResultsCopyWithImpl<_Results>(this, _$identity);
}

abstract class _Results implements Results {
  const factory _Results(
      {@required @nullable double popularity,
      @required @nullable int voteCount,
      @required @nullable String posterPath,
      @required @nullable int id,
      @required @nullable String title,
      @required @nullable double voteAverage,
      @required @nullable String overview,
      @required @nullable String releaseDate}) = _$_Results;

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
  _$ResultsCopyWith<_Results> get copyWith;
}
