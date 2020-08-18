// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'movie_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MovieResultModel _$MovieResultModelFromJson(Map<String, dynamic> json) {
  return _MovieResultModel.fromJson(json);
}

class _$MovieResultModelTearOff {
  const _$MovieResultModelTearOff();

// ignore: unused_element
  _MovieResultModel call(
      {@required @nullable double popularity,
      @required @JsonKey(name: 'vote_count') @nullable int voteCount,
      @required @JsonKey(name: 'poster_path') @nullable String posterPath,
      @required @nullable int id,
      @required @nullable String title,
      @required @JsonKey(name: 'vote_average') @nullable double voteAverage,
      @required @nullable String overview,
      @required @JsonKey(name: 'release_date') @nullable String releaseDate}) {
    return _MovieResultModel(
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
const $MovieResultModel = _$MovieResultModelTearOff();

mixin _$MovieResultModel {
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
  $MovieResultModelCopyWith<MovieResultModel> get copyWith;
}

abstract class $MovieResultModelCopyWith<$Res> {
  factory $MovieResultModelCopyWith(
          MovieResultModel value, $Res Function(MovieResultModel) then) =
      _$MovieResultModelCopyWithImpl<$Res>;
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

class _$MovieResultModelCopyWithImpl<$Res>
    implements $MovieResultModelCopyWith<$Res> {
  _$MovieResultModelCopyWithImpl(this._value, this._then);

  final MovieResultModel _value;
  // ignore: unused_field
  final $Res Function(MovieResultModel) _then;

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

abstract class _$MovieResultModelCopyWith<$Res>
    implements $MovieResultModelCopyWith<$Res> {
  factory _$MovieResultModelCopyWith(
          _MovieResultModel value, $Res Function(_MovieResultModel) then) =
      __$MovieResultModelCopyWithImpl<$Res>;
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

class __$MovieResultModelCopyWithImpl<$Res>
    extends _$MovieResultModelCopyWithImpl<$Res>
    implements _$MovieResultModelCopyWith<$Res> {
  __$MovieResultModelCopyWithImpl(
      _MovieResultModel _value, $Res Function(_MovieResultModel) _then)
      : super(_value, (v) => _then(v as _MovieResultModel));

  @override
  _MovieResultModel get _value => super._value as _MovieResultModel;

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
    return _then(_MovieResultModel(
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
class _$_MovieResultModel implements _MovieResultModel {
  const _$_MovieResultModel(
      {@required @nullable this.popularity,
      @required @JsonKey(name: 'vote_count') @nullable this.voteCount,
      @required @JsonKey(name: 'poster_path') @nullable this.posterPath,
      @required @nullable this.id,
      @required @nullable this.title,
      @required @JsonKey(name: 'vote_average') @nullable this.voteAverage,
      @required @nullable this.overview,
      @required @JsonKey(name: 'release_date') @nullable this.releaseDate});

  factory _$_MovieResultModel.fromJson(Map<String, dynamic> json) =>
      _$_$_MovieResultModelFromJson(json);

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
    return 'MovieResultModel(popularity: $popularity, voteCount: $voteCount, posterPath: $posterPath, id: $id, title: $title, voteAverage: $voteAverage, overview: $overview, releaseDate: $releaseDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieResultModel &&
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
  _$MovieResultModelCopyWith<_MovieResultModel> get copyWith =>
      __$MovieResultModelCopyWithImpl<_MovieResultModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MovieResultModelToJson(this);
  }
}

abstract class _MovieResultModel implements MovieResultModel {
  const factory _MovieResultModel(
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
          String releaseDate}) = _$_MovieResultModel;

  factory _MovieResultModel.fromJson(Map<String, dynamic> json) =
      _$_MovieResultModel.fromJson;

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
  _$MovieResultModelCopyWith<_MovieResultModel> get copyWith;
}
