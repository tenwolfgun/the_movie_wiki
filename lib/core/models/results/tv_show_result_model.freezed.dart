// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tv_show_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TvShowResultModel _$TvShowResultModelFromJson(Map<String, dynamic> json) {
  return _TvShowResultModel.fromJson(json);
}

class _$TvShowResultModelTearOff {
  const _$TvShowResultModelTearOff();

// ignore: unused_element
  _TvShowResultModel call(
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
    return _TvShowResultModel(
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
const $TvShowResultModel = _$TvShowResultModelTearOff();

mixin _$TvShowResultModel {
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
  $TvShowResultModelCopyWith<TvShowResultModel> get copyWith;
}

abstract class $TvShowResultModelCopyWith<$Res> {
  factory $TvShowResultModelCopyWith(
          TvShowResultModel value, $Res Function(TvShowResultModel) then) =
      _$TvShowResultModelCopyWithImpl<$Res>;
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

class _$TvShowResultModelCopyWithImpl<$Res>
    implements $TvShowResultModelCopyWith<$Res> {
  _$TvShowResultModelCopyWithImpl(this._value, this._then);

  final TvShowResultModel _value;
  // ignore: unused_field
  final $Res Function(TvShowResultModel) _then;

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

abstract class _$TvShowResultModelCopyWith<$Res>
    implements $TvShowResultModelCopyWith<$Res> {
  factory _$TvShowResultModelCopyWith(
          _TvShowResultModel value, $Res Function(_TvShowResultModel) then) =
      __$TvShowResultModelCopyWithImpl<$Res>;
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

class __$TvShowResultModelCopyWithImpl<$Res>
    extends _$TvShowResultModelCopyWithImpl<$Res>
    implements _$TvShowResultModelCopyWith<$Res> {
  __$TvShowResultModelCopyWithImpl(
      _TvShowResultModel _value, $Res Function(_TvShowResultModel) _then)
      : super(_value, (v) => _then(v as _TvShowResultModel));

  @override
  _TvShowResultModel get _value => super._value as _TvShowResultModel;

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
    return _then(_TvShowResultModel(
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
class _$_TvShowResultModel implements _TvShowResultModel {
  const _$_TvShowResultModel(
      {@required @nullable this.popularity,
      @required @JsonKey(name: 'vote_count') @nullable this.voteCount,
      @required @JsonKey(name: 'poster_path') @nullable this.posterPath,
      @required @nullable this.id,
      @required @nullable this.name,
      @required @JsonKey(name: 'vote_average') @nullable this.voteAverage,
      @required @nullable this.overview,
      @required @JsonKey(name: 'first_air_date') @nullable this.firstAirDate});

  factory _$_TvShowResultModel.fromJson(Map<String, dynamic> json) =>
      _$_$_TvShowResultModelFromJson(json);

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
    return 'TvShowResultModel(popularity: $popularity, voteCount: $voteCount, posterPath: $posterPath, id: $id, name: $name, voteAverage: $voteAverage, overview: $overview, firstAirDate: $firstAirDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TvShowResultModel &&
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
  _$TvShowResultModelCopyWith<_TvShowResultModel> get copyWith =>
      __$TvShowResultModelCopyWithImpl<_TvShowResultModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TvShowResultModelToJson(this);
  }
}

abstract class _TvShowResultModel implements TvShowResultModel {
  const factory _TvShowResultModel(
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
          String firstAirDate}) = _$_TvShowResultModel;

  factory _TvShowResultModel.fromJson(Map<String, dynamic> json) =
      _$_TvShowResultModel.fromJson;

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
  _$TvShowResultModelCopyWith<_TvShowResultModel> get copyWith;
}
