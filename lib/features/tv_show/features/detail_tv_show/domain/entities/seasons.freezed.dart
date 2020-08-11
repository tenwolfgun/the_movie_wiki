// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'seasons.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SeasonsTearOff {
  const _$SeasonsTearOff();

// ignore: unused_element
  _Seasons call(
      {@required @nullable String airDate,
      @required @nullable int episodeCount,
      @required @nullable int id,
      @required @nullable String overview,
      @required @nullable String posterPath,
      @required @nullable int sesonNumber}) {
    return _Seasons(
      airDate: airDate,
      episodeCount: episodeCount,
      id: id,
      overview: overview,
      posterPath: posterPath,
      sesonNumber: sesonNumber,
    );
  }
}

// ignore: unused_element
const $Seasons = _$SeasonsTearOff();

mixin _$Seasons {
  @nullable
  String get airDate;
  @nullable
  int get episodeCount;
  @nullable
  int get id;
  @nullable
  String get overview;
  @nullable
  String get posterPath;
  @nullable
  int get sesonNumber;

  $SeasonsCopyWith<Seasons> get copyWith;
}

abstract class $SeasonsCopyWith<$Res> {
  factory $SeasonsCopyWith(Seasons value, $Res Function(Seasons) then) =
      _$SeasonsCopyWithImpl<$Res>;
  $Res call(
      {@nullable String airDate,
      @nullable int episodeCount,
      @nullable int id,
      @nullable String overview,
      @nullable String posterPath,
      @nullable int sesonNumber});
}

class _$SeasonsCopyWithImpl<$Res> implements $SeasonsCopyWith<$Res> {
  _$SeasonsCopyWithImpl(this._value, this._then);

  final Seasons _value;
  // ignore: unused_field
  final $Res Function(Seasons) _then;

  @override
  $Res call({
    Object airDate = freezed,
    Object episodeCount = freezed,
    Object id = freezed,
    Object overview = freezed,
    Object posterPath = freezed,
    Object sesonNumber = freezed,
  }) {
    return _then(_value.copyWith(
      airDate: airDate == freezed ? _value.airDate : airDate as String,
      episodeCount:
          episodeCount == freezed ? _value.episodeCount : episodeCount as int,
      id: id == freezed ? _value.id : id as int,
      overview: overview == freezed ? _value.overview : overview as String,
      posterPath:
          posterPath == freezed ? _value.posterPath : posterPath as String,
      sesonNumber:
          sesonNumber == freezed ? _value.sesonNumber : sesonNumber as int,
    ));
  }
}

abstract class _$SeasonsCopyWith<$Res> implements $SeasonsCopyWith<$Res> {
  factory _$SeasonsCopyWith(_Seasons value, $Res Function(_Seasons) then) =
      __$SeasonsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable String airDate,
      @nullable int episodeCount,
      @nullable int id,
      @nullable String overview,
      @nullable String posterPath,
      @nullable int sesonNumber});
}

class __$SeasonsCopyWithImpl<$Res> extends _$SeasonsCopyWithImpl<$Res>
    implements _$SeasonsCopyWith<$Res> {
  __$SeasonsCopyWithImpl(_Seasons _value, $Res Function(_Seasons) _then)
      : super(_value, (v) => _then(v as _Seasons));

  @override
  _Seasons get _value => super._value as _Seasons;

  @override
  $Res call({
    Object airDate = freezed,
    Object episodeCount = freezed,
    Object id = freezed,
    Object overview = freezed,
    Object posterPath = freezed,
    Object sesonNumber = freezed,
  }) {
    return _then(_Seasons(
      airDate: airDate == freezed ? _value.airDate : airDate as String,
      episodeCount:
          episodeCount == freezed ? _value.episodeCount : episodeCount as int,
      id: id == freezed ? _value.id : id as int,
      overview: overview == freezed ? _value.overview : overview as String,
      posterPath:
          posterPath == freezed ? _value.posterPath : posterPath as String,
      sesonNumber:
          sesonNumber == freezed ? _value.sesonNumber : sesonNumber as int,
    ));
  }
}

class _$_Seasons implements _Seasons {
  const _$_Seasons(
      {@required @nullable this.airDate,
      @required @nullable this.episodeCount,
      @required @nullable this.id,
      @required @nullable this.overview,
      @required @nullable this.posterPath,
      @required @nullable this.sesonNumber});

  @override
  @nullable
  final String airDate;
  @override
  @nullable
  final int episodeCount;
  @override
  @nullable
  final int id;
  @override
  @nullable
  final String overview;
  @override
  @nullable
  final String posterPath;
  @override
  @nullable
  final int sesonNumber;

  @override
  String toString() {
    return 'Seasons(airDate: $airDate, episodeCount: $episodeCount, id: $id, overview: $overview, posterPath: $posterPath, sesonNumber: $sesonNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Seasons &&
            (identical(other.airDate, airDate) ||
                const DeepCollectionEquality()
                    .equals(other.airDate, airDate)) &&
            (identical(other.episodeCount, episodeCount) ||
                const DeepCollectionEquality()
                    .equals(other.episodeCount, episodeCount)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.overview, overview) ||
                const DeepCollectionEquality()
                    .equals(other.overview, overview)) &&
            (identical(other.posterPath, posterPath) ||
                const DeepCollectionEquality()
                    .equals(other.posterPath, posterPath)) &&
            (identical(other.sesonNumber, sesonNumber) ||
                const DeepCollectionEquality()
                    .equals(other.sesonNumber, sesonNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(airDate) ^
      const DeepCollectionEquality().hash(episodeCount) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(overview) ^
      const DeepCollectionEquality().hash(posterPath) ^
      const DeepCollectionEquality().hash(sesonNumber);

  @override
  _$SeasonsCopyWith<_Seasons> get copyWith =>
      __$SeasonsCopyWithImpl<_Seasons>(this, _$identity);
}

abstract class _Seasons implements Seasons {
  const factory _Seasons(
      {@required @nullable String airDate,
      @required @nullable int episodeCount,
      @required @nullable int id,
      @required @nullable String overview,
      @required @nullable String posterPath,
      @required @nullable int sesonNumber}) = _$_Seasons;

  @override
  @nullable
  String get airDate;
  @override
  @nullable
  int get episodeCount;
  @override
  @nullable
  int get id;
  @override
  @nullable
  String get overview;
  @override
  @nullable
  String get posterPath;
  @override
  @nullable
  int get sesonNumber;
  @override
  _$SeasonsCopyWith<_Seasons> get copyWith;
}
