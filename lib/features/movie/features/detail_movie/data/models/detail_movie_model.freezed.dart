// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'detail_movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DetailMovieModel _$DetailMovieModelFromJson(Map<String, dynamic> json) {
  return _DetailMovieModel.fromJson(json);
}

class _$DetailMovieModelTearOff {
  const _$DetailMovieModelTearOff();

// ignore: unused_element
  _DetailMovieModel call(
      {@required
      @nullable
          double budget,
      @required
      @nullable
          List<GenreModel> genres,
      @required
      @nullable
          String homepage,
      @required
      @JsonKey(name: 'imdb_id')
      @nullable
          String imdbId,
      @required
      @JsonKey(name: 'original_language')
      @nullable
          String originalLanguage,
      @required
      @JsonKey(name: 'original_title')
      @nullable
          String originalTitle,
      @required
      @nullable
          double popularity,
      @required
      @JsonKey(name: 'production_companies')
      @nullable
          List<ProductionCompaniesModel> productionCompanies,
      @required
      @JsonKey(name: 'production_countries')
      @nullable
          List<ProductionCountriesModel> productionCountries,
      @required
      @nullable
          double revenue,
      @required
      @nullable
          double runtime,
      @required
      @nullable
          String status,
      @required
      @nullable
          String tagline,
      @required
      @nullable
          VideosModel videos,
      @required
      @nullable
          SimilarMoviesModel similar,
      @required
      @nullable
          CreditsModel credits,
      @required
      @nullable
          ImagesModel images,
      @required
      @nullable
          ReviewsModel reviews}) {
    return _DetailMovieModel(
      budget: budget,
      genres: genres,
      homepage: homepage,
      imdbId: imdbId,
      originalLanguage: originalLanguage,
      originalTitle: originalTitle,
      popularity: popularity,
      productionCompanies: productionCompanies,
      productionCountries: productionCountries,
      revenue: revenue,
      runtime: runtime,
      status: status,
      tagline: tagline,
      videos: videos,
      similar: similar,
      credits: credits,
      images: images,
      reviews: reviews,
    );
  }
}

// ignore: unused_element
const $DetailMovieModel = _$DetailMovieModelTearOff();

mixin _$DetailMovieModel {
  @nullable
  double get budget;
  @nullable
  List<GenreModel> get genres;
  @nullable
  String get homepage;
  @JsonKey(name: 'imdb_id')
  @nullable
  String get imdbId;
  @JsonKey(name: 'original_language')
  @nullable
  String get originalLanguage;
  @JsonKey(name: 'original_title')
  @nullable
  String get originalTitle;
  @nullable
  double get popularity;
  @JsonKey(name: 'production_companies')
  @nullable
  List<ProductionCompaniesModel> get productionCompanies;
  @JsonKey(name: 'production_countries')
  @nullable
  List<ProductionCountriesModel> get productionCountries;
  @nullable
  double get revenue;
  @nullable
  double get runtime;
  @nullable
  String get status;
  @nullable
  String get tagline;
  @nullable
  VideosModel get videos;
  @nullable
  SimilarMoviesModel get similar;
  @nullable
  CreditsModel get credits;
  @nullable
  ImagesModel get images;
  @nullable
  ReviewsModel get reviews;

  Map<String, dynamic> toJson();
  $DetailMovieModelCopyWith<DetailMovieModel> get copyWith;
}

abstract class $DetailMovieModelCopyWith<$Res> {
  factory $DetailMovieModelCopyWith(
          DetailMovieModel value, $Res Function(DetailMovieModel) then) =
      _$DetailMovieModelCopyWithImpl<$Res>;
  $Res call(
      {@nullable
          double budget,
      @nullable
          List<GenreModel> genres,
      @nullable
          String homepage,
      @JsonKey(name: 'imdb_id')
      @nullable
          String imdbId,
      @JsonKey(name: 'original_language')
      @nullable
          String originalLanguage,
      @JsonKey(name: 'original_title')
      @nullable
          String originalTitle,
      @nullable
          double popularity,
      @JsonKey(name: 'production_companies')
      @nullable
          List<ProductionCompaniesModel> productionCompanies,
      @JsonKey(name: 'production_countries')
      @nullable
          List<ProductionCountriesModel> productionCountries,
      @nullable
          double revenue,
      @nullable
          double runtime,
      @nullable
          String status,
      @nullable
          String tagline,
      @nullable
          VideosModel videos,
      @nullable
          SimilarMoviesModel similar,
      @nullable
          CreditsModel credits,
      @nullable
          ImagesModel images,
      @nullable
          ReviewsModel reviews});

  $VideosModelCopyWith<$Res> get videos;
  $SimilarMoviesModelCopyWith<$Res> get similar;
  $CreditsModelCopyWith<$Res> get credits;
  $ImagesModelCopyWith<$Res> get images;
  $ReviewsModelCopyWith<$Res> get reviews;
}

class _$DetailMovieModelCopyWithImpl<$Res>
    implements $DetailMovieModelCopyWith<$Res> {
  _$DetailMovieModelCopyWithImpl(this._value, this._then);

  final DetailMovieModel _value;
  // ignore: unused_field
  final $Res Function(DetailMovieModel) _then;

  @override
  $Res call({
    Object budget = freezed,
    Object genres = freezed,
    Object homepage = freezed,
    Object imdbId = freezed,
    Object originalLanguage = freezed,
    Object originalTitle = freezed,
    Object popularity = freezed,
    Object productionCompanies = freezed,
    Object productionCountries = freezed,
    Object revenue = freezed,
    Object runtime = freezed,
    Object status = freezed,
    Object tagline = freezed,
    Object videos = freezed,
    Object similar = freezed,
    Object credits = freezed,
    Object images = freezed,
    Object reviews = freezed,
  }) {
    return _then(_value.copyWith(
      budget: budget == freezed ? _value.budget : budget as double,
      genres: genres == freezed ? _value.genres : genres as List<GenreModel>,
      homepage: homepage == freezed ? _value.homepage : homepage as String,
      imdbId: imdbId == freezed ? _value.imdbId : imdbId as String,
      originalLanguage: originalLanguage == freezed
          ? _value.originalLanguage
          : originalLanguage as String,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle as String,
      popularity:
          popularity == freezed ? _value.popularity : popularity as double,
      productionCompanies: productionCompanies == freezed
          ? _value.productionCompanies
          : productionCompanies as List<ProductionCompaniesModel>,
      productionCountries: productionCountries == freezed
          ? _value.productionCountries
          : productionCountries as List<ProductionCountriesModel>,
      revenue: revenue == freezed ? _value.revenue : revenue as double,
      runtime: runtime == freezed ? _value.runtime : runtime as double,
      status: status == freezed ? _value.status : status as String,
      tagline: tagline == freezed ? _value.tagline : tagline as String,
      videos: videos == freezed ? _value.videos : videos as VideosModel,
      similar:
          similar == freezed ? _value.similar : similar as SimilarMoviesModel,
      credits: credits == freezed ? _value.credits : credits as CreditsModel,
      images: images == freezed ? _value.images : images as ImagesModel,
      reviews: reviews == freezed ? _value.reviews : reviews as ReviewsModel,
    ));
  }

  @override
  $VideosModelCopyWith<$Res> get videos {
    if (_value.videos == null) {
      return null;
    }
    return $VideosModelCopyWith<$Res>(_value.videos, (value) {
      return _then(_value.copyWith(videos: value));
    });
  }

  @override
  $SimilarMoviesModelCopyWith<$Res> get similar {
    if (_value.similar == null) {
      return null;
    }
    return $SimilarMoviesModelCopyWith<$Res>(_value.similar, (value) {
      return _then(_value.copyWith(similar: value));
    });
  }

  @override
  $CreditsModelCopyWith<$Res> get credits {
    if (_value.credits == null) {
      return null;
    }
    return $CreditsModelCopyWith<$Res>(_value.credits, (value) {
      return _then(_value.copyWith(credits: value));
    });
  }

  @override
  $ImagesModelCopyWith<$Res> get images {
    if (_value.images == null) {
      return null;
    }
    return $ImagesModelCopyWith<$Res>(_value.images, (value) {
      return _then(_value.copyWith(images: value));
    });
  }

  @override
  $ReviewsModelCopyWith<$Res> get reviews {
    if (_value.reviews == null) {
      return null;
    }
    return $ReviewsModelCopyWith<$Res>(_value.reviews, (value) {
      return _then(_value.copyWith(reviews: value));
    });
  }
}

abstract class _$DetailMovieModelCopyWith<$Res>
    implements $DetailMovieModelCopyWith<$Res> {
  factory _$DetailMovieModelCopyWith(
          _DetailMovieModel value, $Res Function(_DetailMovieModel) then) =
      __$DetailMovieModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
          double budget,
      @nullable
          List<GenreModel> genres,
      @nullable
          String homepage,
      @JsonKey(name: 'imdb_id')
      @nullable
          String imdbId,
      @JsonKey(name: 'original_language')
      @nullable
          String originalLanguage,
      @JsonKey(name: 'original_title')
      @nullable
          String originalTitle,
      @nullable
          double popularity,
      @JsonKey(name: 'production_companies')
      @nullable
          List<ProductionCompaniesModel> productionCompanies,
      @JsonKey(name: 'production_countries')
      @nullable
          List<ProductionCountriesModel> productionCountries,
      @nullable
          double revenue,
      @nullable
          double runtime,
      @nullable
          String status,
      @nullable
          String tagline,
      @nullable
          VideosModel videos,
      @nullable
          SimilarMoviesModel similar,
      @nullable
          CreditsModel credits,
      @nullable
          ImagesModel images,
      @nullable
          ReviewsModel reviews});

  @override
  $VideosModelCopyWith<$Res> get videos;
  @override
  $SimilarMoviesModelCopyWith<$Res> get similar;
  @override
  $CreditsModelCopyWith<$Res> get credits;
  @override
  $ImagesModelCopyWith<$Res> get images;
  @override
  $ReviewsModelCopyWith<$Res> get reviews;
}

class __$DetailMovieModelCopyWithImpl<$Res>
    extends _$DetailMovieModelCopyWithImpl<$Res>
    implements _$DetailMovieModelCopyWith<$Res> {
  __$DetailMovieModelCopyWithImpl(
      _DetailMovieModel _value, $Res Function(_DetailMovieModel) _then)
      : super(_value, (v) => _then(v as _DetailMovieModel));

  @override
  _DetailMovieModel get _value => super._value as _DetailMovieModel;

  @override
  $Res call({
    Object budget = freezed,
    Object genres = freezed,
    Object homepage = freezed,
    Object imdbId = freezed,
    Object originalLanguage = freezed,
    Object originalTitle = freezed,
    Object popularity = freezed,
    Object productionCompanies = freezed,
    Object productionCountries = freezed,
    Object revenue = freezed,
    Object runtime = freezed,
    Object status = freezed,
    Object tagline = freezed,
    Object videos = freezed,
    Object similar = freezed,
    Object credits = freezed,
    Object images = freezed,
    Object reviews = freezed,
  }) {
    return _then(_DetailMovieModel(
      budget: budget == freezed ? _value.budget : budget as double,
      genres: genres == freezed ? _value.genres : genres as List<GenreModel>,
      homepage: homepage == freezed ? _value.homepage : homepage as String,
      imdbId: imdbId == freezed ? _value.imdbId : imdbId as String,
      originalLanguage: originalLanguage == freezed
          ? _value.originalLanguage
          : originalLanguage as String,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle as String,
      popularity:
          popularity == freezed ? _value.popularity : popularity as double,
      productionCompanies: productionCompanies == freezed
          ? _value.productionCompanies
          : productionCompanies as List<ProductionCompaniesModel>,
      productionCountries: productionCountries == freezed
          ? _value.productionCountries
          : productionCountries as List<ProductionCountriesModel>,
      revenue: revenue == freezed ? _value.revenue : revenue as double,
      runtime: runtime == freezed ? _value.runtime : runtime as double,
      status: status == freezed ? _value.status : status as String,
      tagline: tagline == freezed ? _value.tagline : tagline as String,
      videos: videos == freezed ? _value.videos : videos as VideosModel,
      similar:
          similar == freezed ? _value.similar : similar as SimilarMoviesModel,
      credits: credits == freezed ? _value.credits : credits as CreditsModel,
      images: images == freezed ? _value.images : images as ImagesModel,
      reviews: reviews == freezed ? _value.reviews : reviews as ReviewsModel,
    ));
  }
}

@JsonSerializable()
class _$_DetailMovieModel implements _DetailMovieModel {
  const _$_DetailMovieModel(
      {@required
      @nullable
          this.budget,
      @required
      @nullable
          this.genres,
      @required
      @nullable
          this.homepage,
      @required
      @JsonKey(name: 'imdb_id')
      @nullable
          this.imdbId,
      @required
      @JsonKey(name: 'original_language')
      @nullable
          this.originalLanguage,
      @required
      @JsonKey(name: 'original_title')
      @nullable
          this.originalTitle,
      @required
      @nullable
          this.popularity,
      @required
      @JsonKey(name: 'production_companies')
      @nullable
          this.productionCompanies,
      @required
      @JsonKey(name: 'production_countries')
      @nullable
          this.productionCountries,
      @required
      @nullable
          this.revenue,
      @required
      @nullable
          this.runtime,
      @required
      @nullable
          this.status,
      @required
      @nullable
          this.tagline,
      @required
      @nullable
          this.videos,
      @required
      @nullable
          this.similar,
      @required
      @nullable
          this.credits,
      @required
      @nullable
          this.images,
      @required
      @nullable
          this.reviews});

  factory _$_DetailMovieModel.fromJson(Map<String, dynamic> json) =>
      _$_$_DetailMovieModelFromJson(json);

  @override
  @nullable
  final double budget;
  @override
  @nullable
  final List<GenreModel> genres;
  @override
  @nullable
  final String homepage;
  @override
  @JsonKey(name: 'imdb_id')
  @nullable
  final String imdbId;
  @override
  @JsonKey(name: 'original_language')
  @nullable
  final String originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  @nullable
  final String originalTitle;
  @override
  @nullable
  final double popularity;
  @override
  @JsonKey(name: 'production_companies')
  @nullable
  final List<ProductionCompaniesModel> productionCompanies;
  @override
  @JsonKey(name: 'production_countries')
  @nullable
  final List<ProductionCountriesModel> productionCountries;
  @override
  @nullable
  final double revenue;
  @override
  @nullable
  final double runtime;
  @override
  @nullable
  final String status;
  @override
  @nullable
  final String tagline;
  @override
  @nullable
  final VideosModel videos;
  @override
  @nullable
  final SimilarMoviesModel similar;
  @override
  @nullable
  final CreditsModel credits;
  @override
  @nullable
  final ImagesModel images;
  @override
  @nullable
  final ReviewsModel reviews;

  @override
  String toString() {
    return 'DetailMovieModel(budget: $budget, genres: $genres, homepage: $homepage, imdbId: $imdbId, originalLanguage: $originalLanguage, originalTitle: $originalTitle, popularity: $popularity, productionCompanies: $productionCompanies, productionCountries: $productionCountries, revenue: $revenue, runtime: $runtime, status: $status, tagline: $tagline, videos: $videos, similar: $similar, credits: $credits, images: $images, reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DetailMovieModel &&
            (identical(other.budget, budget) ||
                const DeepCollectionEquality().equals(other.budget, budget)) &&
            (identical(other.genres, genres) ||
                const DeepCollectionEquality().equals(other.genres, genres)) &&
            (identical(other.homepage, homepage) ||
                const DeepCollectionEquality()
                    .equals(other.homepage, homepage)) &&
            (identical(other.imdbId, imdbId) ||
                const DeepCollectionEquality().equals(other.imdbId, imdbId)) &&
            (identical(other.originalLanguage, originalLanguage) ||
                const DeepCollectionEquality()
                    .equals(other.originalLanguage, originalLanguage)) &&
            (identical(other.originalTitle, originalTitle) ||
                const DeepCollectionEquality()
                    .equals(other.originalTitle, originalTitle)) &&
            (identical(other.popularity, popularity) ||
                const DeepCollectionEquality()
                    .equals(other.popularity, popularity)) &&
            (identical(other.productionCompanies, productionCompanies) ||
                const DeepCollectionEquality()
                    .equals(other.productionCompanies, productionCompanies)) &&
            (identical(other.productionCountries, productionCountries) ||
                const DeepCollectionEquality()
                    .equals(other.productionCountries, productionCountries)) &&
            (identical(other.revenue, revenue) ||
                const DeepCollectionEquality()
                    .equals(other.revenue, revenue)) &&
            (identical(other.runtime, runtime) ||
                const DeepCollectionEquality()
                    .equals(other.runtime, runtime)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.tagline, tagline) ||
                const DeepCollectionEquality()
                    .equals(other.tagline, tagline)) &&
            (identical(other.videos, videos) ||
                const DeepCollectionEquality().equals(other.videos, videos)) &&
            (identical(other.similar, similar) ||
                const DeepCollectionEquality()
                    .equals(other.similar, similar)) &&
            (identical(other.credits, credits) ||
                const DeepCollectionEquality()
                    .equals(other.credits, credits)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.reviews, reviews) ||
                const DeepCollectionEquality().equals(other.reviews, reviews)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(budget) ^
      const DeepCollectionEquality().hash(genres) ^
      const DeepCollectionEquality().hash(homepage) ^
      const DeepCollectionEquality().hash(imdbId) ^
      const DeepCollectionEquality().hash(originalLanguage) ^
      const DeepCollectionEquality().hash(originalTitle) ^
      const DeepCollectionEquality().hash(popularity) ^
      const DeepCollectionEquality().hash(productionCompanies) ^
      const DeepCollectionEquality().hash(productionCountries) ^
      const DeepCollectionEquality().hash(revenue) ^
      const DeepCollectionEquality().hash(runtime) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(tagline) ^
      const DeepCollectionEquality().hash(videos) ^
      const DeepCollectionEquality().hash(similar) ^
      const DeepCollectionEquality().hash(credits) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(reviews);

  @override
  _$DetailMovieModelCopyWith<_DetailMovieModel> get copyWith =>
      __$DetailMovieModelCopyWithImpl<_DetailMovieModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DetailMovieModelToJson(this);
  }
}

abstract class _DetailMovieModel implements DetailMovieModel {
  const factory _DetailMovieModel(
      {@required
      @nullable
          double budget,
      @required
      @nullable
          List<GenreModel> genres,
      @required
      @nullable
          String homepage,
      @required
      @JsonKey(name: 'imdb_id')
      @nullable
          String imdbId,
      @required
      @JsonKey(name: 'original_language')
      @nullable
          String originalLanguage,
      @required
      @JsonKey(name: 'original_title')
      @nullable
          String originalTitle,
      @required
      @nullable
          double popularity,
      @required
      @JsonKey(name: 'production_companies')
      @nullable
          List<ProductionCompaniesModel> productionCompanies,
      @required
      @JsonKey(name: 'production_countries')
      @nullable
          List<ProductionCountriesModel> productionCountries,
      @required
      @nullable
          double revenue,
      @required
      @nullable
          double runtime,
      @required
      @nullable
          String status,
      @required
      @nullable
          String tagline,
      @required
      @nullable
          VideosModel videos,
      @required
      @nullable
          SimilarMoviesModel similar,
      @required
      @nullable
          CreditsModel credits,
      @required
      @nullable
          ImagesModel images,
      @required
      @nullable
          ReviewsModel reviews}) = _$_DetailMovieModel;

  factory _DetailMovieModel.fromJson(Map<String, dynamic> json) =
      _$_DetailMovieModel.fromJson;

  @override
  @nullable
  double get budget;
  @override
  @nullable
  List<GenreModel> get genres;
  @override
  @nullable
  String get homepage;
  @override
  @JsonKey(name: 'imdb_id')
  @nullable
  String get imdbId;
  @override
  @JsonKey(name: 'original_language')
  @nullable
  String get originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  @nullable
  String get originalTitle;
  @override
  @nullable
  double get popularity;
  @override
  @JsonKey(name: 'production_companies')
  @nullable
  List<ProductionCompaniesModel> get productionCompanies;
  @override
  @JsonKey(name: 'production_countries')
  @nullable
  List<ProductionCountriesModel> get productionCountries;
  @override
  @nullable
  double get revenue;
  @override
  @nullable
  double get runtime;
  @override
  @nullable
  String get status;
  @override
  @nullable
  String get tagline;
  @override
  @nullable
  VideosModel get videos;
  @override
  @nullable
  SimilarMoviesModel get similar;
  @override
  @nullable
  CreditsModel get credits;
  @override
  @nullable
  ImagesModel get images;
  @override
  @nullable
  ReviewsModel get reviews;
  @override
  _$DetailMovieModelCopyWith<_DetailMovieModel> get copyWith;
}

GenreModel _$GenreModelFromJson(Map<String, dynamic> json) {
  return _GenreModel.fromJson(json);
}

class _$GenreModelTearOff {
  const _$GenreModelTearOff();

// ignore: unused_element
  _GenreModel call(
      {@required @nullable int id, @required @nullable String name}) {
    return _GenreModel(
      id: id,
      name: name,
    );
  }
}

// ignore: unused_element
const $GenreModel = _$GenreModelTearOff();

mixin _$GenreModel {
  @nullable
  int get id;
  @nullable
  String get name;

  Map<String, dynamic> toJson();
  $GenreModelCopyWith<GenreModel> get copyWith;
}

abstract class $GenreModelCopyWith<$Res> {
  factory $GenreModelCopyWith(
          GenreModel value, $Res Function(GenreModel) then) =
      _$GenreModelCopyWithImpl<$Res>;
  $Res call({@nullable int id, @nullable String name});
}

class _$GenreModelCopyWithImpl<$Res> implements $GenreModelCopyWith<$Res> {
  _$GenreModelCopyWithImpl(this._value, this._then);

  final GenreModel _value;
  // ignore: unused_field
  final $Res Function(GenreModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

abstract class _$GenreModelCopyWith<$Res> implements $GenreModelCopyWith<$Res> {
  factory _$GenreModelCopyWith(
          _GenreModel value, $Res Function(_GenreModel) then) =
      __$GenreModelCopyWithImpl<$Res>;
  @override
  $Res call({@nullable int id, @nullable String name});
}

class __$GenreModelCopyWithImpl<$Res> extends _$GenreModelCopyWithImpl<$Res>
    implements _$GenreModelCopyWith<$Res> {
  __$GenreModelCopyWithImpl(
      _GenreModel _value, $Res Function(_GenreModel) _then)
      : super(_value, (v) => _then(v as _GenreModel));

  @override
  _GenreModel get _value => super._value as _GenreModel;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(_GenreModel(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()
class _$_GenreModel implements _GenreModel {
  const _$_GenreModel(
      {@required @nullable this.id, @required @nullable this.name});

  factory _$_GenreModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GenreModelFromJson(json);

  @override
  @nullable
  final int id;
  @override
  @nullable
  final String name;

  @override
  String toString() {
    return 'GenreModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GenreModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @override
  _$GenreModelCopyWith<_GenreModel> get copyWith =>
      __$GenreModelCopyWithImpl<_GenreModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GenreModelToJson(this);
  }
}

abstract class _GenreModel implements GenreModel {
  const factory _GenreModel(
      {@required @nullable int id,
      @required @nullable String name}) = _$_GenreModel;

  factory _GenreModel.fromJson(Map<String, dynamic> json) =
      _$_GenreModel.fromJson;

  @override
  @nullable
  int get id;
  @override
  @nullable
  String get name;
  @override
  _$GenreModelCopyWith<_GenreModel> get copyWith;
}

ProductionCompaniesModel _$ProductionCompaniesModelFromJson(
    Map<String, dynamic> json) {
  return _ProductionCompaniesModel.fromJson(json);
}

class _$ProductionCompaniesModelTearOff {
  const _$ProductionCompaniesModelTearOff();

// ignore: unused_element
  _ProductionCompaniesModel call(
      {@required
      @nullable
          int id,
      @required
      @JsonKey(name: 'logo_path')
      @nullable
          String logoPath,
      @required
      @nullable
          String name,
      @required
      @JsonKey(name: 'origin_country')
      @nullable
          String originCountry}) {
    return _ProductionCompaniesModel(
      id: id,
      logoPath: logoPath,
      name: name,
      originCountry: originCountry,
    );
  }
}

// ignore: unused_element
const $ProductionCompaniesModel = _$ProductionCompaniesModelTearOff();

mixin _$ProductionCompaniesModel {
  @nullable
  int get id;
  @JsonKey(name: 'logo_path')
  @nullable
  String get logoPath;
  @nullable
  String get name;
  @JsonKey(name: 'origin_country')
  @nullable
  String get originCountry;

  Map<String, dynamic> toJson();
  $ProductionCompaniesModelCopyWith<ProductionCompaniesModel> get copyWith;
}

abstract class $ProductionCompaniesModelCopyWith<$Res> {
  factory $ProductionCompaniesModelCopyWith(ProductionCompaniesModel value,
          $Res Function(ProductionCompaniesModel) then) =
      _$ProductionCompaniesModelCopyWithImpl<$Res>;
  $Res call(
      {@nullable int id,
      @JsonKey(name: 'logo_path') @nullable String logoPath,
      @nullable String name,
      @JsonKey(name: 'origin_country') @nullable String originCountry});
}

class _$ProductionCompaniesModelCopyWithImpl<$Res>
    implements $ProductionCompaniesModelCopyWith<$Res> {
  _$ProductionCompaniesModelCopyWithImpl(this._value, this._then);

  final ProductionCompaniesModel _value;
  // ignore: unused_field
  final $Res Function(ProductionCompaniesModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object logoPath = freezed,
    Object name = freezed,
    Object originCountry = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      logoPath: logoPath == freezed ? _value.logoPath : logoPath as String,
      name: name == freezed ? _value.name : name as String,
      originCountry: originCountry == freezed
          ? _value.originCountry
          : originCountry as String,
    ));
  }
}

abstract class _$ProductionCompaniesModelCopyWith<$Res>
    implements $ProductionCompaniesModelCopyWith<$Res> {
  factory _$ProductionCompaniesModelCopyWith(_ProductionCompaniesModel value,
          $Res Function(_ProductionCompaniesModel) then) =
      __$ProductionCompaniesModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable int id,
      @JsonKey(name: 'logo_path') @nullable String logoPath,
      @nullable String name,
      @JsonKey(name: 'origin_country') @nullable String originCountry});
}

class __$ProductionCompaniesModelCopyWithImpl<$Res>
    extends _$ProductionCompaniesModelCopyWithImpl<$Res>
    implements _$ProductionCompaniesModelCopyWith<$Res> {
  __$ProductionCompaniesModelCopyWithImpl(_ProductionCompaniesModel _value,
      $Res Function(_ProductionCompaniesModel) _then)
      : super(_value, (v) => _then(v as _ProductionCompaniesModel));

  @override
  _ProductionCompaniesModel get _value =>
      super._value as _ProductionCompaniesModel;

  @override
  $Res call({
    Object id = freezed,
    Object logoPath = freezed,
    Object name = freezed,
    Object originCountry = freezed,
  }) {
    return _then(_ProductionCompaniesModel(
      id: id == freezed ? _value.id : id as int,
      logoPath: logoPath == freezed ? _value.logoPath : logoPath as String,
      name: name == freezed ? _value.name : name as String,
      originCountry: originCountry == freezed
          ? _value.originCountry
          : originCountry as String,
    ));
  }
}

@JsonSerializable()
class _$_ProductionCompaniesModel implements _ProductionCompaniesModel {
  const _$_ProductionCompaniesModel(
      {@required @nullable this.id,
      @required @JsonKey(name: 'logo_path') @nullable this.logoPath,
      @required @nullable this.name,
      @required @JsonKey(name: 'origin_country') @nullable this.originCountry});

  factory _$_ProductionCompaniesModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductionCompaniesModelFromJson(json);

  @override
  @nullable
  final int id;
  @override
  @JsonKey(name: 'logo_path')
  @nullable
  final String logoPath;
  @override
  @nullable
  final String name;
  @override
  @JsonKey(name: 'origin_country')
  @nullable
  final String originCountry;

  @override
  String toString() {
    return 'ProductionCompaniesModel(id: $id, logoPath: $logoPath, name: $name, originCountry: $originCountry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductionCompaniesModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.logoPath, logoPath) ||
                const DeepCollectionEquality()
                    .equals(other.logoPath, logoPath)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.originCountry, originCountry) ||
                const DeepCollectionEquality()
                    .equals(other.originCountry, originCountry)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(logoPath) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(originCountry);

  @override
  _$ProductionCompaniesModelCopyWith<_ProductionCompaniesModel> get copyWith =>
      __$ProductionCompaniesModelCopyWithImpl<_ProductionCompaniesModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductionCompaniesModelToJson(this);
  }
}

abstract class _ProductionCompaniesModel implements ProductionCompaniesModel {
  const factory _ProductionCompaniesModel(
      {@required
      @nullable
          int id,
      @required
      @JsonKey(name: 'logo_path')
      @nullable
          String logoPath,
      @required
      @nullable
          String name,
      @required
      @JsonKey(name: 'origin_country')
      @nullable
          String originCountry}) = _$_ProductionCompaniesModel;

  factory _ProductionCompaniesModel.fromJson(Map<String, dynamic> json) =
      _$_ProductionCompaniesModel.fromJson;

  @override
  @nullable
  int get id;
  @override
  @JsonKey(name: 'logo_path')
  @nullable
  String get logoPath;
  @override
  @nullable
  String get name;
  @override
  @JsonKey(name: 'origin_country')
  @nullable
  String get originCountry;
  @override
  _$ProductionCompaniesModelCopyWith<_ProductionCompaniesModel> get copyWith;
}

ProductionCountriesModel _$ProductionCountriesModelFromJson(
    Map<String, dynamic> json) {
  return _ProductionCountriesModel.fromJson(json);
}

class _$ProductionCountriesModelTearOff {
  const _$ProductionCountriesModelTearOff();

// ignore: unused_element
  _ProductionCountriesModel call(
      {@required @JsonKey(name: 'iso_3166_1') @nullable String isoCountry,
      @required @nullable String name}) {
    return _ProductionCountriesModel(
      isoCountry: isoCountry,
      name: name,
    );
  }
}

// ignore: unused_element
const $ProductionCountriesModel = _$ProductionCountriesModelTearOff();

mixin _$ProductionCountriesModel {
  @JsonKey(name: 'iso_3166_1')
  @nullable
  String get isoCountry;
  @nullable
  String get name;

  Map<String, dynamic> toJson();
  $ProductionCountriesModelCopyWith<ProductionCountriesModel> get copyWith;
}

abstract class $ProductionCountriesModelCopyWith<$Res> {
  factory $ProductionCountriesModelCopyWith(ProductionCountriesModel value,
          $Res Function(ProductionCountriesModel) then) =
      _$ProductionCountriesModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'iso_3166_1') @nullable String isoCountry,
      @nullable String name});
}

class _$ProductionCountriesModelCopyWithImpl<$Res>
    implements $ProductionCountriesModelCopyWith<$Res> {
  _$ProductionCountriesModelCopyWithImpl(this._value, this._then);

  final ProductionCountriesModel _value;
  // ignore: unused_field
  final $Res Function(ProductionCountriesModel) _then;

  @override
  $Res call({
    Object isoCountry = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      isoCountry:
          isoCountry == freezed ? _value.isoCountry : isoCountry as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

abstract class _$ProductionCountriesModelCopyWith<$Res>
    implements $ProductionCountriesModelCopyWith<$Res> {
  factory _$ProductionCountriesModelCopyWith(_ProductionCountriesModel value,
          $Res Function(_ProductionCountriesModel) then) =
      __$ProductionCountriesModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'iso_3166_1') @nullable String isoCountry,
      @nullable String name});
}

class __$ProductionCountriesModelCopyWithImpl<$Res>
    extends _$ProductionCountriesModelCopyWithImpl<$Res>
    implements _$ProductionCountriesModelCopyWith<$Res> {
  __$ProductionCountriesModelCopyWithImpl(_ProductionCountriesModel _value,
      $Res Function(_ProductionCountriesModel) _then)
      : super(_value, (v) => _then(v as _ProductionCountriesModel));

  @override
  _ProductionCountriesModel get _value =>
      super._value as _ProductionCountriesModel;

  @override
  $Res call({
    Object isoCountry = freezed,
    Object name = freezed,
  }) {
    return _then(_ProductionCountriesModel(
      isoCountry:
          isoCountry == freezed ? _value.isoCountry : isoCountry as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()
class _$_ProductionCountriesModel implements _ProductionCountriesModel {
  const _$_ProductionCountriesModel(
      {@required @JsonKey(name: 'iso_3166_1') @nullable this.isoCountry,
      @required @nullable this.name});

  factory _$_ProductionCountriesModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductionCountriesModelFromJson(json);

  @override
  @JsonKey(name: 'iso_3166_1')
  @nullable
  final String isoCountry;
  @override
  @nullable
  final String name;

  @override
  String toString() {
    return 'ProductionCountriesModel(isoCountry: $isoCountry, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductionCountriesModel &&
            (identical(other.isoCountry, isoCountry) ||
                const DeepCollectionEquality()
                    .equals(other.isoCountry, isoCountry)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isoCountry) ^
      const DeepCollectionEquality().hash(name);

  @override
  _$ProductionCountriesModelCopyWith<_ProductionCountriesModel> get copyWith =>
      __$ProductionCountriesModelCopyWithImpl<_ProductionCountriesModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductionCountriesModelToJson(this);
  }
}

abstract class _ProductionCountriesModel implements ProductionCountriesModel {
  const factory _ProductionCountriesModel(
      {@required @JsonKey(name: 'iso_3166_1') @nullable String isoCountry,
      @required @nullable String name}) = _$_ProductionCountriesModel;

  factory _ProductionCountriesModel.fromJson(Map<String, dynamic> json) =
      _$_ProductionCountriesModel.fromJson;

  @override
  @JsonKey(name: 'iso_3166_1')
  @nullable
  String get isoCountry;
  @override
  @nullable
  String get name;
  @override
  _$ProductionCountriesModelCopyWith<_ProductionCountriesModel> get copyWith;
}

VideosModel _$VideosModelFromJson(Map<String, dynamic> json) {
  return _VideosModel.fromJson(json);
}

class _$VideosModelTearOff {
  const _$VideosModelTearOff();

// ignore: unused_element
  _VideosModel call({@required @nullable List<VideoResultModel> results}) {
    return _VideosModel(
      results: results,
    );
  }
}

// ignore: unused_element
const $VideosModel = _$VideosModelTearOff();

mixin _$VideosModel {
  @nullable
  List<VideoResultModel> get results;

  Map<String, dynamic> toJson();
  $VideosModelCopyWith<VideosModel> get copyWith;
}

abstract class $VideosModelCopyWith<$Res> {
  factory $VideosModelCopyWith(
          VideosModel value, $Res Function(VideosModel) then) =
      _$VideosModelCopyWithImpl<$Res>;
  $Res call({@nullable List<VideoResultModel> results});
}

class _$VideosModelCopyWithImpl<$Res> implements $VideosModelCopyWith<$Res> {
  _$VideosModelCopyWithImpl(this._value, this._then);

  final VideosModel _value;
  // ignore: unused_field
  final $Res Function(VideosModel) _then;

  @override
  $Res call({
    Object results = freezed,
  }) {
    return _then(_value.copyWith(
      results: results == freezed
          ? _value.results
          : results as List<VideoResultModel>,
    ));
  }
}

abstract class _$VideosModelCopyWith<$Res>
    implements $VideosModelCopyWith<$Res> {
  factory _$VideosModelCopyWith(
          _VideosModel value, $Res Function(_VideosModel) then) =
      __$VideosModelCopyWithImpl<$Res>;
  @override
  $Res call({@nullable List<VideoResultModel> results});
}

class __$VideosModelCopyWithImpl<$Res> extends _$VideosModelCopyWithImpl<$Res>
    implements _$VideosModelCopyWith<$Res> {
  __$VideosModelCopyWithImpl(
      _VideosModel _value, $Res Function(_VideosModel) _then)
      : super(_value, (v) => _then(v as _VideosModel));

  @override
  _VideosModel get _value => super._value as _VideosModel;

  @override
  $Res call({
    Object results = freezed,
  }) {
    return _then(_VideosModel(
      results: results == freezed
          ? _value.results
          : results as List<VideoResultModel>,
    ));
  }
}

@JsonSerializable()
class _$_VideosModel implements _VideosModel {
  const _$_VideosModel({@required @nullable this.results});

  factory _$_VideosModel.fromJson(Map<String, dynamic> json) =>
      _$_$_VideosModelFromJson(json);

  @override
  @nullable
  final List<VideoResultModel> results;

  @override
  String toString() {
    return 'VideosModel(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VideosModel &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(results);

  @override
  _$VideosModelCopyWith<_VideosModel> get copyWith =>
      __$VideosModelCopyWithImpl<_VideosModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VideosModelToJson(this);
  }
}

abstract class _VideosModel implements VideosModel {
  const factory _VideosModel(
      {@required @nullable List<VideoResultModel> results}) = _$_VideosModel;

  factory _VideosModel.fromJson(Map<String, dynamic> json) =
      _$_VideosModel.fromJson;

  @override
  @nullable
  List<VideoResultModel> get results;
  @override
  _$VideosModelCopyWith<_VideosModel> get copyWith;
}

VideoResultModel _$VideoResultModelFromJson(Map<String, dynamic> json) {
  return _VideoResultModel.fromJson(json);
}

class _$VideoResultModelTearOff {
  const _$VideoResultModelTearOff();

// ignore: unused_element
  _VideoResultModel call(
      {@required @nullable String id,
      @required @nullable String key,
      @required @nullable String name,
      @required @nullable String site,
      @required @nullable double size,
      @required @nullable String type}) {
    return _VideoResultModel(
      id: id,
      key: key,
      name: name,
      site: site,
      size: size,
      type: type,
    );
  }
}

// ignore: unused_element
const $VideoResultModel = _$VideoResultModelTearOff();

mixin _$VideoResultModel {
  @nullable
  String get id;
  @nullable
  String get key;
  @nullable
  String get name;
  @nullable
  String get site;
  @nullable
  double get size;
  @nullable
  String get type;

  Map<String, dynamic> toJson();
  $VideoResultModelCopyWith<VideoResultModel> get copyWith;
}

abstract class $VideoResultModelCopyWith<$Res> {
  factory $VideoResultModelCopyWith(
          VideoResultModel value, $Res Function(VideoResultModel) then) =
      _$VideoResultModelCopyWithImpl<$Res>;
  $Res call(
      {@nullable String id,
      @nullable String key,
      @nullable String name,
      @nullable String site,
      @nullable double size,
      @nullable String type});
}

class _$VideoResultModelCopyWithImpl<$Res>
    implements $VideoResultModelCopyWith<$Res> {
  _$VideoResultModelCopyWithImpl(this._value, this._then);

  final VideoResultModel _value;
  // ignore: unused_field
  final $Res Function(VideoResultModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object key = freezed,
    Object name = freezed,
    Object site = freezed,
    Object size = freezed,
    Object type = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      key: key == freezed ? _value.key : key as String,
      name: name == freezed ? _value.name : name as String,
      site: site == freezed ? _value.site : site as String,
      size: size == freezed ? _value.size : size as double,
      type: type == freezed ? _value.type : type as String,
    ));
  }
}

abstract class _$VideoResultModelCopyWith<$Res>
    implements $VideoResultModelCopyWith<$Res> {
  factory _$VideoResultModelCopyWith(
          _VideoResultModel value, $Res Function(_VideoResultModel) then) =
      __$VideoResultModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable String id,
      @nullable String key,
      @nullable String name,
      @nullable String site,
      @nullable double size,
      @nullable String type});
}

class __$VideoResultModelCopyWithImpl<$Res>
    extends _$VideoResultModelCopyWithImpl<$Res>
    implements _$VideoResultModelCopyWith<$Res> {
  __$VideoResultModelCopyWithImpl(
      _VideoResultModel _value, $Res Function(_VideoResultModel) _then)
      : super(_value, (v) => _then(v as _VideoResultModel));

  @override
  _VideoResultModel get _value => super._value as _VideoResultModel;

  @override
  $Res call({
    Object id = freezed,
    Object key = freezed,
    Object name = freezed,
    Object site = freezed,
    Object size = freezed,
    Object type = freezed,
  }) {
    return _then(_VideoResultModel(
      id: id == freezed ? _value.id : id as String,
      key: key == freezed ? _value.key : key as String,
      name: name == freezed ? _value.name : name as String,
      site: site == freezed ? _value.site : site as String,
      size: size == freezed ? _value.size : size as double,
      type: type == freezed ? _value.type : type as String,
    ));
  }
}

@JsonSerializable()
class _$_VideoResultModel implements _VideoResultModel {
  const _$_VideoResultModel(
      {@required @nullable this.id,
      @required @nullable this.key,
      @required @nullable this.name,
      @required @nullable this.site,
      @required @nullable this.size,
      @required @nullable this.type});

  factory _$_VideoResultModel.fromJson(Map<String, dynamic> json) =>
      _$_$_VideoResultModelFromJson(json);

  @override
  @nullable
  final String id;
  @override
  @nullable
  final String key;
  @override
  @nullable
  final String name;
  @override
  @nullable
  final String site;
  @override
  @nullable
  final double size;
  @override
  @nullable
  final String type;

  @override
  String toString() {
    return 'VideoResultModel(id: $id, key: $key, name: $name, site: $site, size: $size, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VideoResultModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.site, site) ||
                const DeepCollectionEquality().equals(other.site, site)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(site) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(type);

  @override
  _$VideoResultModelCopyWith<_VideoResultModel> get copyWith =>
      __$VideoResultModelCopyWithImpl<_VideoResultModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VideoResultModelToJson(this);
  }
}

abstract class _VideoResultModel implements VideoResultModel {
  const factory _VideoResultModel(
      {@required @nullable String id,
      @required @nullable String key,
      @required @nullable String name,
      @required @nullable String site,
      @required @nullable double size,
      @required @nullable String type}) = _$_VideoResultModel;

  factory _VideoResultModel.fromJson(Map<String, dynamic> json) =
      _$_VideoResultModel.fromJson;

  @override
  @nullable
  String get id;
  @override
  @nullable
  String get key;
  @override
  @nullable
  String get name;
  @override
  @nullable
  String get site;
  @override
  @nullable
  double get size;
  @override
  @nullable
  String get type;
  @override
  _$VideoResultModelCopyWith<_VideoResultModel> get copyWith;
}

SimilarMoviesModel _$SimilarMoviesModelFromJson(Map<String, dynamic> json) {
  return _SimilarMoviesModel.fromJson(json);
}

class _$SimilarMoviesModelTearOff {
  const _$SimilarMoviesModelTearOff();

// ignore: unused_element
  _SimilarMoviesModel call({@required @nullable List<ResultModel> results}) {
    return _SimilarMoviesModel(
      results: results,
    );
  }
}

// ignore: unused_element
const $SimilarMoviesModel = _$SimilarMoviesModelTearOff();

mixin _$SimilarMoviesModel {
  @nullable
  List<ResultModel> get results;

  Map<String, dynamic> toJson();
  $SimilarMoviesModelCopyWith<SimilarMoviesModel> get copyWith;
}

abstract class $SimilarMoviesModelCopyWith<$Res> {
  factory $SimilarMoviesModelCopyWith(
          SimilarMoviesModel value, $Res Function(SimilarMoviesModel) then) =
      _$SimilarMoviesModelCopyWithImpl<$Res>;
  $Res call({@nullable List<ResultModel> results});
}

class _$SimilarMoviesModelCopyWithImpl<$Res>
    implements $SimilarMoviesModelCopyWith<$Res> {
  _$SimilarMoviesModelCopyWithImpl(this._value, this._then);

  final SimilarMoviesModel _value;
  // ignore: unused_field
  final $Res Function(SimilarMoviesModel) _then;

  @override
  $Res call({
    Object results = freezed,
  }) {
    return _then(_value.copyWith(
      results:
          results == freezed ? _value.results : results as List<ResultModel>,
    ));
  }
}

abstract class _$SimilarMoviesModelCopyWith<$Res>
    implements $SimilarMoviesModelCopyWith<$Res> {
  factory _$SimilarMoviesModelCopyWith(
          _SimilarMoviesModel value, $Res Function(_SimilarMoviesModel) then) =
      __$SimilarMoviesModelCopyWithImpl<$Res>;
  @override
  $Res call({@nullable List<ResultModel> results});
}

class __$SimilarMoviesModelCopyWithImpl<$Res>
    extends _$SimilarMoviesModelCopyWithImpl<$Res>
    implements _$SimilarMoviesModelCopyWith<$Res> {
  __$SimilarMoviesModelCopyWithImpl(
      _SimilarMoviesModel _value, $Res Function(_SimilarMoviesModel) _then)
      : super(_value, (v) => _then(v as _SimilarMoviesModel));

  @override
  _SimilarMoviesModel get _value => super._value as _SimilarMoviesModel;

  @override
  $Res call({
    Object results = freezed,
  }) {
    return _then(_SimilarMoviesModel(
      results:
          results == freezed ? _value.results : results as List<ResultModel>,
    ));
  }
}

@JsonSerializable()
class _$_SimilarMoviesModel implements _SimilarMoviesModel {
  const _$_SimilarMoviesModel({@required @nullable this.results});

  factory _$_SimilarMoviesModel.fromJson(Map<String, dynamic> json) =>
      _$_$_SimilarMoviesModelFromJson(json);

  @override
  @nullable
  final List<ResultModel> results;

  @override
  String toString() {
    return 'SimilarMoviesModel(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SimilarMoviesModel &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(results);

  @override
  _$SimilarMoviesModelCopyWith<_SimilarMoviesModel> get copyWith =>
      __$SimilarMoviesModelCopyWithImpl<_SimilarMoviesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SimilarMoviesModelToJson(this);
  }
}

abstract class _SimilarMoviesModel implements SimilarMoviesModel {
  const factory _SimilarMoviesModel(
      {@required @nullable List<ResultModel> results}) = _$_SimilarMoviesModel;

  factory _SimilarMoviesModel.fromJson(Map<String, dynamic> json) =
      _$_SimilarMoviesModel.fromJson;

  @override
  @nullable
  List<ResultModel> get results;
  @override
  _$SimilarMoviesModelCopyWith<_SimilarMoviesModel> get copyWith;
}

CreditsModel _$CreditsModelFromJson(Map<String, dynamic> json) {
  return _CreditsModel.fromJson(json);
}

class _$CreditsModelTearOff {
  const _$CreditsModelTearOff();

// ignore: unused_element
  _CreditsModel call({@required @nullable List<CastModel> cast}) {
    return _CreditsModel(
      cast: cast,
    );
  }
}

// ignore: unused_element
const $CreditsModel = _$CreditsModelTearOff();

mixin _$CreditsModel {
  @nullable
  List<CastModel> get cast;

  Map<String, dynamic> toJson();
  $CreditsModelCopyWith<CreditsModel> get copyWith;
}

abstract class $CreditsModelCopyWith<$Res> {
  factory $CreditsModelCopyWith(
          CreditsModel value, $Res Function(CreditsModel) then) =
      _$CreditsModelCopyWithImpl<$Res>;
  $Res call({@nullable List<CastModel> cast});
}

class _$CreditsModelCopyWithImpl<$Res> implements $CreditsModelCopyWith<$Res> {
  _$CreditsModelCopyWithImpl(this._value, this._then);

  final CreditsModel _value;
  // ignore: unused_field
  final $Res Function(CreditsModel) _then;

  @override
  $Res call({
    Object cast = freezed,
  }) {
    return _then(_value.copyWith(
      cast: cast == freezed ? _value.cast : cast as List<CastModel>,
    ));
  }
}

abstract class _$CreditsModelCopyWith<$Res>
    implements $CreditsModelCopyWith<$Res> {
  factory _$CreditsModelCopyWith(
          _CreditsModel value, $Res Function(_CreditsModel) then) =
      __$CreditsModelCopyWithImpl<$Res>;
  @override
  $Res call({@nullable List<CastModel> cast});
}

class __$CreditsModelCopyWithImpl<$Res> extends _$CreditsModelCopyWithImpl<$Res>
    implements _$CreditsModelCopyWith<$Res> {
  __$CreditsModelCopyWithImpl(
      _CreditsModel _value, $Res Function(_CreditsModel) _then)
      : super(_value, (v) => _then(v as _CreditsModel));

  @override
  _CreditsModel get _value => super._value as _CreditsModel;

  @override
  $Res call({
    Object cast = freezed,
  }) {
    return _then(_CreditsModel(
      cast: cast == freezed ? _value.cast : cast as List<CastModel>,
    ));
  }
}

@JsonSerializable()
class _$_CreditsModel implements _CreditsModel {
  const _$_CreditsModel({@required @nullable this.cast});

  factory _$_CreditsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CreditsModelFromJson(json);

  @override
  @nullable
  final List<CastModel> cast;

  @override
  String toString() {
    return 'CreditsModel(cast: $cast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreditsModel &&
            (identical(other.cast, cast) ||
                const DeepCollectionEquality().equals(other.cast, cast)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cast);

  @override
  _$CreditsModelCopyWith<_CreditsModel> get copyWith =>
      __$CreditsModelCopyWithImpl<_CreditsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CreditsModelToJson(this);
  }
}

abstract class _CreditsModel implements CreditsModel {
  const factory _CreditsModel({@required @nullable List<CastModel> cast}) =
      _$_CreditsModel;

  factory _CreditsModel.fromJson(Map<String, dynamic> json) =
      _$_CreditsModel.fromJson;

  @override
  @nullable
  List<CastModel> get cast;
  @override
  _$CreditsModelCopyWith<_CreditsModel> get copyWith;
}

CastModel _$CastModelFromJson(Map<String, dynamic> json) {
  return _CastModel.fromJson(json);
}

class _$CastModelTearOff {
  const _$CastModelTearOff();

// ignore: unused_element
  _CastModel call(
      {@required @nullable int id,
      @required @nullable String character,
      @required @nullable String name,
      @required @JsonKey(name: 'profile_path') @nullable String profilePath}) {
    return _CastModel(
      id: id,
      character: character,
      name: name,
      profilePath: profilePath,
    );
  }
}

// ignore: unused_element
const $CastModel = _$CastModelTearOff();

mixin _$CastModel {
  @nullable
  int get id;
  @nullable
  String get character;
  @nullable
  String get name;
  @JsonKey(name: 'profile_path')
  @nullable
  String get profilePath;

  Map<String, dynamic> toJson();
  $CastModelCopyWith<CastModel> get copyWith;
}

abstract class $CastModelCopyWith<$Res> {
  factory $CastModelCopyWith(CastModel value, $Res Function(CastModel) then) =
      _$CastModelCopyWithImpl<$Res>;
  $Res call(
      {@nullable int id,
      @nullable String character,
      @nullable String name,
      @JsonKey(name: 'profile_path') @nullable String profilePath});
}

class _$CastModelCopyWithImpl<$Res> implements $CastModelCopyWith<$Res> {
  _$CastModelCopyWithImpl(this._value, this._then);

  final CastModel _value;
  // ignore: unused_field
  final $Res Function(CastModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object character = freezed,
    Object name = freezed,
    Object profilePath = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      character: character == freezed ? _value.character : character as String,
      name: name == freezed ? _value.name : name as String,
      profilePath:
          profilePath == freezed ? _value.profilePath : profilePath as String,
    ));
  }
}

abstract class _$CastModelCopyWith<$Res> implements $CastModelCopyWith<$Res> {
  factory _$CastModelCopyWith(
          _CastModel value, $Res Function(_CastModel) then) =
      __$CastModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable int id,
      @nullable String character,
      @nullable String name,
      @JsonKey(name: 'profile_path') @nullable String profilePath});
}

class __$CastModelCopyWithImpl<$Res> extends _$CastModelCopyWithImpl<$Res>
    implements _$CastModelCopyWith<$Res> {
  __$CastModelCopyWithImpl(_CastModel _value, $Res Function(_CastModel) _then)
      : super(_value, (v) => _then(v as _CastModel));

  @override
  _CastModel get _value => super._value as _CastModel;

  @override
  $Res call({
    Object id = freezed,
    Object character = freezed,
    Object name = freezed,
    Object profilePath = freezed,
  }) {
    return _then(_CastModel(
      id: id == freezed ? _value.id : id as int,
      character: character == freezed ? _value.character : character as String,
      name: name == freezed ? _value.name : name as String,
      profilePath:
          profilePath == freezed ? _value.profilePath : profilePath as String,
    ));
  }
}

@JsonSerializable()
class _$_CastModel implements _CastModel {
  const _$_CastModel(
      {@required @nullable this.id,
      @required @nullable this.character,
      @required @nullable this.name,
      @required @JsonKey(name: 'profile_path') @nullable this.profilePath});

  factory _$_CastModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CastModelFromJson(json);

  @override
  @nullable
  final int id;
  @override
  @nullable
  final String character;
  @override
  @nullable
  final String name;
  @override
  @JsonKey(name: 'profile_path')
  @nullable
  final String profilePath;

  @override
  String toString() {
    return 'CastModel(id: $id, character: $character, name: $name, profilePath: $profilePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CastModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.character, character) ||
                const DeepCollectionEquality()
                    .equals(other.character, character)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.profilePath, profilePath) ||
                const DeepCollectionEquality()
                    .equals(other.profilePath, profilePath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(character) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(profilePath);

  @override
  _$CastModelCopyWith<_CastModel> get copyWith =>
      __$CastModelCopyWithImpl<_CastModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CastModelToJson(this);
  }
}

abstract class _CastModel implements CastModel {
  const factory _CastModel(
      {@required
      @nullable
          int id,
      @required
      @nullable
          String character,
      @required
      @nullable
          String name,
      @required
      @JsonKey(name: 'profile_path')
      @nullable
          String profilePath}) = _$_CastModel;

  factory _CastModel.fromJson(Map<String, dynamic> json) =
      _$_CastModel.fromJson;

  @override
  @nullable
  int get id;
  @override
  @nullable
  String get character;
  @override
  @nullable
  String get name;
  @override
  @JsonKey(name: 'profile_path')
  @nullable
  String get profilePath;
  @override
  _$CastModelCopyWith<_CastModel> get copyWith;
}

ImagesModel _$ImagesModelFromJson(Map<String, dynamic> json) {
  return _ImagesModel.fromJson(json);
}

class _$ImagesModelTearOff {
  const _$ImagesModelTearOff();

// ignore: unused_element
  _ImagesModel call(
      {@required @nullable List<BackdropsModel> backdrops,
      @required @nullable List<PostersModel> posters}) {
    return _ImagesModel(
      backdrops: backdrops,
      posters: posters,
    );
  }
}

// ignore: unused_element
const $ImagesModel = _$ImagesModelTearOff();

mixin _$ImagesModel {
  @nullable
  List<BackdropsModel> get backdrops;
  @nullable
  List<PostersModel> get posters;

  Map<String, dynamic> toJson();
  $ImagesModelCopyWith<ImagesModel> get copyWith;
}

abstract class $ImagesModelCopyWith<$Res> {
  factory $ImagesModelCopyWith(
          ImagesModel value, $Res Function(ImagesModel) then) =
      _$ImagesModelCopyWithImpl<$Res>;
  $Res call(
      {@nullable List<BackdropsModel> backdrops,
      @nullable List<PostersModel> posters});
}

class _$ImagesModelCopyWithImpl<$Res> implements $ImagesModelCopyWith<$Res> {
  _$ImagesModelCopyWithImpl(this._value, this._then);

  final ImagesModel _value;
  // ignore: unused_field
  final $Res Function(ImagesModel) _then;

  @override
  $Res call({
    Object backdrops = freezed,
    Object posters = freezed,
  }) {
    return _then(_value.copyWith(
      backdrops: backdrops == freezed
          ? _value.backdrops
          : backdrops as List<BackdropsModel>,
      posters:
          posters == freezed ? _value.posters : posters as List<PostersModel>,
    ));
  }
}

abstract class _$ImagesModelCopyWith<$Res>
    implements $ImagesModelCopyWith<$Res> {
  factory _$ImagesModelCopyWith(
          _ImagesModel value, $Res Function(_ImagesModel) then) =
      __$ImagesModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable List<BackdropsModel> backdrops,
      @nullable List<PostersModel> posters});
}

class __$ImagesModelCopyWithImpl<$Res> extends _$ImagesModelCopyWithImpl<$Res>
    implements _$ImagesModelCopyWith<$Res> {
  __$ImagesModelCopyWithImpl(
      _ImagesModel _value, $Res Function(_ImagesModel) _then)
      : super(_value, (v) => _then(v as _ImagesModel));

  @override
  _ImagesModel get _value => super._value as _ImagesModel;

  @override
  $Res call({
    Object backdrops = freezed,
    Object posters = freezed,
  }) {
    return _then(_ImagesModel(
      backdrops: backdrops == freezed
          ? _value.backdrops
          : backdrops as List<BackdropsModel>,
      posters:
          posters == freezed ? _value.posters : posters as List<PostersModel>,
    ));
  }
}

@JsonSerializable()
class _$_ImagesModel implements _ImagesModel {
  const _$_ImagesModel(
      {@required @nullable this.backdrops, @required @nullable this.posters});

  factory _$_ImagesModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ImagesModelFromJson(json);

  @override
  @nullable
  final List<BackdropsModel> backdrops;
  @override
  @nullable
  final List<PostersModel> posters;

  @override
  String toString() {
    return 'ImagesModel(backdrops: $backdrops, posters: $posters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImagesModel &&
            (identical(other.backdrops, backdrops) ||
                const DeepCollectionEquality()
                    .equals(other.backdrops, backdrops)) &&
            (identical(other.posters, posters) ||
                const DeepCollectionEquality().equals(other.posters, posters)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(backdrops) ^
      const DeepCollectionEquality().hash(posters);

  @override
  _$ImagesModelCopyWith<_ImagesModel> get copyWith =>
      __$ImagesModelCopyWithImpl<_ImagesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ImagesModelToJson(this);
  }
}

abstract class _ImagesModel implements ImagesModel {
  const factory _ImagesModel(
      {@required @nullable List<BackdropsModel> backdrops,
      @required @nullable List<PostersModel> posters}) = _$_ImagesModel;

  factory _ImagesModel.fromJson(Map<String, dynamic> json) =
      _$_ImagesModel.fromJson;

  @override
  @nullable
  List<BackdropsModel> get backdrops;
  @override
  @nullable
  List<PostersModel> get posters;
  @override
  _$ImagesModelCopyWith<_ImagesModel> get copyWith;
}

BackdropsModel _$BackdropsModelFromJson(Map<String, dynamic> json) {
  return _BackdropsModel.fromJson(json);
}

class _$BackdropsModelTearOff {
  const _$BackdropsModelTearOff();

// ignore: unused_element
  _BackdropsModel call(
      {@required @JsonKey(name: 'file_path') @nullable String filePath,
      @required @nullable double height,
      @required @nullable double width}) {
    return _BackdropsModel(
      filePath: filePath,
      height: height,
      width: width,
    );
  }
}

// ignore: unused_element
const $BackdropsModel = _$BackdropsModelTearOff();

mixin _$BackdropsModel {
  @JsonKey(name: 'file_path')
  @nullable
  String get filePath;
  @nullable
  double get height;
  @nullable
  double get width;

  Map<String, dynamic> toJson();
  $BackdropsModelCopyWith<BackdropsModel> get copyWith;
}

abstract class $BackdropsModelCopyWith<$Res> {
  factory $BackdropsModelCopyWith(
          BackdropsModel value, $Res Function(BackdropsModel) then) =
      _$BackdropsModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'file_path') @nullable String filePath,
      @nullable double height,
      @nullable double width});
}

class _$BackdropsModelCopyWithImpl<$Res>
    implements $BackdropsModelCopyWith<$Res> {
  _$BackdropsModelCopyWithImpl(this._value, this._then);

  final BackdropsModel _value;
  // ignore: unused_field
  final $Res Function(BackdropsModel) _then;

  @override
  $Res call({
    Object filePath = freezed,
    Object height = freezed,
    Object width = freezed,
  }) {
    return _then(_value.copyWith(
      filePath: filePath == freezed ? _value.filePath : filePath as String,
      height: height == freezed ? _value.height : height as double,
      width: width == freezed ? _value.width : width as double,
    ));
  }
}

abstract class _$BackdropsModelCopyWith<$Res>
    implements $BackdropsModelCopyWith<$Res> {
  factory _$BackdropsModelCopyWith(
          _BackdropsModel value, $Res Function(_BackdropsModel) then) =
      __$BackdropsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'file_path') @nullable String filePath,
      @nullable double height,
      @nullable double width});
}

class __$BackdropsModelCopyWithImpl<$Res>
    extends _$BackdropsModelCopyWithImpl<$Res>
    implements _$BackdropsModelCopyWith<$Res> {
  __$BackdropsModelCopyWithImpl(
      _BackdropsModel _value, $Res Function(_BackdropsModel) _then)
      : super(_value, (v) => _then(v as _BackdropsModel));

  @override
  _BackdropsModel get _value => super._value as _BackdropsModel;

  @override
  $Res call({
    Object filePath = freezed,
    Object height = freezed,
    Object width = freezed,
  }) {
    return _then(_BackdropsModel(
      filePath: filePath == freezed ? _value.filePath : filePath as String,
      height: height == freezed ? _value.height : height as double,
      width: width == freezed ? _value.width : width as double,
    ));
  }
}

@JsonSerializable()
class _$_BackdropsModel implements _BackdropsModel {
  const _$_BackdropsModel(
      {@required @JsonKey(name: 'file_path') @nullable this.filePath,
      @required @nullable this.height,
      @required @nullable this.width});

  factory _$_BackdropsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_BackdropsModelFromJson(json);

  @override
  @JsonKey(name: 'file_path')
  @nullable
  final String filePath;
  @override
  @nullable
  final double height;
  @override
  @nullable
  final double width;

  @override
  String toString() {
    return 'BackdropsModel(filePath: $filePath, height: $height, width: $width)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BackdropsModel &&
            (identical(other.filePath, filePath) ||
                const DeepCollectionEquality()
                    .equals(other.filePath, filePath)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(filePath) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(width);

  @override
  _$BackdropsModelCopyWith<_BackdropsModel> get copyWith =>
      __$BackdropsModelCopyWithImpl<_BackdropsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BackdropsModelToJson(this);
  }
}

abstract class _BackdropsModel implements BackdropsModel {
  const factory _BackdropsModel(
      {@required @JsonKey(name: 'file_path') @nullable String filePath,
      @required @nullable double height,
      @required @nullable double width}) = _$_BackdropsModel;

  factory _BackdropsModel.fromJson(Map<String, dynamic> json) =
      _$_BackdropsModel.fromJson;

  @override
  @JsonKey(name: 'file_path')
  @nullable
  String get filePath;
  @override
  @nullable
  double get height;
  @override
  @nullable
  double get width;
  @override
  _$BackdropsModelCopyWith<_BackdropsModel> get copyWith;
}

PostersModel _$PostersModelFromJson(Map<String, dynamic> json) {
  return _PostersModel.fromJson(json);
}

class _$PostersModelTearOff {
  const _$PostersModelTearOff();

// ignore: unused_element
  _PostersModel call(
      {@required @JsonKey(name: 'file_path') @nullable String filePath,
      @required @nullable double height,
      @required @nullable double width}) {
    return _PostersModel(
      filePath: filePath,
      height: height,
      width: width,
    );
  }
}

// ignore: unused_element
const $PostersModel = _$PostersModelTearOff();

mixin _$PostersModel {
  @JsonKey(name: 'file_path')
  @nullable
  String get filePath;
  @nullable
  double get height;
  @nullable
  double get width;

  Map<String, dynamic> toJson();
  $PostersModelCopyWith<PostersModel> get copyWith;
}

abstract class $PostersModelCopyWith<$Res> {
  factory $PostersModelCopyWith(
          PostersModel value, $Res Function(PostersModel) then) =
      _$PostersModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'file_path') @nullable String filePath,
      @nullable double height,
      @nullable double width});
}

class _$PostersModelCopyWithImpl<$Res> implements $PostersModelCopyWith<$Res> {
  _$PostersModelCopyWithImpl(this._value, this._then);

  final PostersModel _value;
  // ignore: unused_field
  final $Res Function(PostersModel) _then;

  @override
  $Res call({
    Object filePath = freezed,
    Object height = freezed,
    Object width = freezed,
  }) {
    return _then(_value.copyWith(
      filePath: filePath == freezed ? _value.filePath : filePath as String,
      height: height == freezed ? _value.height : height as double,
      width: width == freezed ? _value.width : width as double,
    ));
  }
}

abstract class _$PostersModelCopyWith<$Res>
    implements $PostersModelCopyWith<$Res> {
  factory _$PostersModelCopyWith(
          _PostersModel value, $Res Function(_PostersModel) then) =
      __$PostersModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'file_path') @nullable String filePath,
      @nullable double height,
      @nullable double width});
}

class __$PostersModelCopyWithImpl<$Res> extends _$PostersModelCopyWithImpl<$Res>
    implements _$PostersModelCopyWith<$Res> {
  __$PostersModelCopyWithImpl(
      _PostersModel _value, $Res Function(_PostersModel) _then)
      : super(_value, (v) => _then(v as _PostersModel));

  @override
  _PostersModel get _value => super._value as _PostersModel;

  @override
  $Res call({
    Object filePath = freezed,
    Object height = freezed,
    Object width = freezed,
  }) {
    return _then(_PostersModel(
      filePath: filePath == freezed ? _value.filePath : filePath as String,
      height: height == freezed ? _value.height : height as double,
      width: width == freezed ? _value.width : width as double,
    ));
  }
}

@JsonSerializable()
class _$_PostersModel implements _PostersModel {
  const _$_PostersModel(
      {@required @JsonKey(name: 'file_path') @nullable this.filePath,
      @required @nullable this.height,
      @required @nullable this.width});

  factory _$_PostersModel.fromJson(Map<String, dynamic> json) =>
      _$_$_PostersModelFromJson(json);

  @override
  @JsonKey(name: 'file_path')
  @nullable
  final String filePath;
  @override
  @nullable
  final double height;
  @override
  @nullable
  final double width;

  @override
  String toString() {
    return 'PostersModel(filePath: $filePath, height: $height, width: $width)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostersModel &&
            (identical(other.filePath, filePath) ||
                const DeepCollectionEquality()
                    .equals(other.filePath, filePath)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(filePath) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(width);

  @override
  _$PostersModelCopyWith<_PostersModel> get copyWith =>
      __$PostersModelCopyWithImpl<_PostersModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PostersModelToJson(this);
  }
}

abstract class _PostersModel implements PostersModel {
  const factory _PostersModel(
      {@required @JsonKey(name: 'file_path') @nullable String filePath,
      @required @nullable double height,
      @required @nullable double width}) = _$_PostersModel;

  factory _PostersModel.fromJson(Map<String, dynamic> json) =
      _$_PostersModel.fromJson;

  @override
  @JsonKey(name: 'file_path')
  @nullable
  String get filePath;
  @override
  @nullable
  double get height;
  @override
  @nullable
  double get width;
  @override
  _$PostersModelCopyWith<_PostersModel> get copyWith;
}

ReviewsModel _$ReviewsModelFromJson(Map<String, dynamic> json) {
  return _ReviewsModel.fromJson(json);
}

class _$ReviewsModelTearOff {
  const _$ReviewsModelTearOff();

// ignore: unused_element
  _ReviewsModel call({@required @nullable List<ReviewResultModel> results}) {
    return _ReviewsModel(
      results: results,
    );
  }
}

// ignore: unused_element
const $ReviewsModel = _$ReviewsModelTearOff();

mixin _$ReviewsModel {
  @nullable
  List<ReviewResultModel> get results;

  Map<String, dynamic> toJson();
  $ReviewsModelCopyWith<ReviewsModel> get copyWith;
}

abstract class $ReviewsModelCopyWith<$Res> {
  factory $ReviewsModelCopyWith(
          ReviewsModel value, $Res Function(ReviewsModel) then) =
      _$ReviewsModelCopyWithImpl<$Res>;
  $Res call({@nullable List<ReviewResultModel> results});
}

class _$ReviewsModelCopyWithImpl<$Res> implements $ReviewsModelCopyWith<$Res> {
  _$ReviewsModelCopyWithImpl(this._value, this._then);

  final ReviewsModel _value;
  // ignore: unused_field
  final $Res Function(ReviewsModel) _then;

  @override
  $Res call({
    Object results = freezed,
  }) {
    return _then(_value.copyWith(
      results: results == freezed
          ? _value.results
          : results as List<ReviewResultModel>,
    ));
  }
}

abstract class _$ReviewsModelCopyWith<$Res>
    implements $ReviewsModelCopyWith<$Res> {
  factory _$ReviewsModelCopyWith(
          _ReviewsModel value, $Res Function(_ReviewsModel) then) =
      __$ReviewsModelCopyWithImpl<$Res>;
  @override
  $Res call({@nullable List<ReviewResultModel> results});
}

class __$ReviewsModelCopyWithImpl<$Res> extends _$ReviewsModelCopyWithImpl<$Res>
    implements _$ReviewsModelCopyWith<$Res> {
  __$ReviewsModelCopyWithImpl(
      _ReviewsModel _value, $Res Function(_ReviewsModel) _then)
      : super(_value, (v) => _then(v as _ReviewsModel));

  @override
  _ReviewsModel get _value => super._value as _ReviewsModel;

  @override
  $Res call({
    Object results = freezed,
  }) {
    return _then(_ReviewsModel(
      results: results == freezed
          ? _value.results
          : results as List<ReviewResultModel>,
    ));
  }
}

@JsonSerializable()
class _$_ReviewsModel implements _ReviewsModel {
  const _$_ReviewsModel({@required @nullable this.results});

  factory _$_ReviewsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ReviewsModelFromJson(json);

  @override
  @nullable
  final List<ReviewResultModel> results;

  @override
  String toString() {
    return 'ReviewsModel(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReviewsModel &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(results);

  @override
  _$ReviewsModelCopyWith<_ReviewsModel> get copyWith =>
      __$ReviewsModelCopyWithImpl<_ReviewsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReviewsModelToJson(this);
  }
}

abstract class _ReviewsModel implements ReviewsModel {
  const factory _ReviewsModel(
      {@required @nullable List<ReviewResultModel> results}) = _$_ReviewsModel;

  factory _ReviewsModel.fromJson(Map<String, dynamic> json) =
      _$_ReviewsModel.fromJson;

  @override
  @nullable
  List<ReviewResultModel> get results;
  @override
  _$ReviewsModelCopyWith<_ReviewsModel> get copyWith;
}

ReviewResultModel _$ReviewResultModelFromJson(Map<String, dynamic> json) {
  return _ReviewResultModel.fromJson(json);
}

class _$ReviewResultModelTearOff {
  const _$ReviewResultModelTearOff();

// ignore: unused_element
  _ReviewResultModel call(
      {@required @nullable String author,
      @required @nullable String content,
      @required @nullable String url}) {
    return _ReviewResultModel(
      author: author,
      content: content,
      url: url,
    );
  }
}

// ignore: unused_element
const $ReviewResultModel = _$ReviewResultModelTearOff();

mixin _$ReviewResultModel {
  @nullable
  String get author;
  @nullable
  String get content;
  @nullable
  String get url;

  Map<String, dynamic> toJson();
  $ReviewResultModelCopyWith<ReviewResultModel> get copyWith;
}

abstract class $ReviewResultModelCopyWith<$Res> {
  factory $ReviewResultModelCopyWith(
          ReviewResultModel value, $Res Function(ReviewResultModel) then) =
      _$ReviewResultModelCopyWithImpl<$Res>;
  $Res call(
      {@nullable String author,
      @nullable String content,
      @nullable String url});
}

class _$ReviewResultModelCopyWithImpl<$Res>
    implements $ReviewResultModelCopyWith<$Res> {
  _$ReviewResultModelCopyWithImpl(this._value, this._then);

  final ReviewResultModel _value;
  // ignore: unused_field
  final $Res Function(ReviewResultModel) _then;

  @override
  $Res call({
    Object author = freezed,
    Object content = freezed,
    Object url = freezed,
  }) {
    return _then(_value.copyWith(
      author: author == freezed ? _value.author : author as String,
      content: content == freezed ? _value.content : content as String,
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

abstract class _$ReviewResultModelCopyWith<$Res>
    implements $ReviewResultModelCopyWith<$Res> {
  factory _$ReviewResultModelCopyWith(
          _ReviewResultModel value, $Res Function(_ReviewResultModel) then) =
      __$ReviewResultModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable String author,
      @nullable String content,
      @nullable String url});
}

class __$ReviewResultModelCopyWithImpl<$Res>
    extends _$ReviewResultModelCopyWithImpl<$Res>
    implements _$ReviewResultModelCopyWith<$Res> {
  __$ReviewResultModelCopyWithImpl(
      _ReviewResultModel _value, $Res Function(_ReviewResultModel) _then)
      : super(_value, (v) => _then(v as _ReviewResultModel));

  @override
  _ReviewResultModel get _value => super._value as _ReviewResultModel;

  @override
  $Res call({
    Object author = freezed,
    Object content = freezed,
    Object url = freezed,
  }) {
    return _then(_ReviewResultModel(
      author: author == freezed ? _value.author : author as String,
      content: content == freezed ? _value.content : content as String,
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

@JsonSerializable()
class _$_ReviewResultModel implements _ReviewResultModel {
  const _$_ReviewResultModel(
      {@required @nullable this.author,
      @required @nullable this.content,
      @required @nullable this.url});

  factory _$_ReviewResultModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ReviewResultModelFromJson(json);

  @override
  @nullable
  final String author;
  @override
  @nullable
  final String content;
  @override
  @nullable
  final String url;

  @override
  String toString() {
    return 'ReviewResultModel(author: $author, content: $content, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReviewResultModel &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(url);

  @override
  _$ReviewResultModelCopyWith<_ReviewResultModel> get copyWith =>
      __$ReviewResultModelCopyWithImpl<_ReviewResultModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReviewResultModelToJson(this);
  }
}

abstract class _ReviewResultModel implements ReviewResultModel {
  const factory _ReviewResultModel(
      {@required @nullable String author,
      @required @nullable String content,
      @required @nullable String url}) = _$_ReviewResultModel;

  factory _ReviewResultModel.fromJson(Map<String, dynamic> json) =
      _$_ReviewResultModel.fromJson;

  @override
  @nullable
  String get author;
  @override
  @nullable
  String get content;
  @override
  @nullable
  String get url;
  @override
  _$ReviewResultModelCopyWith<_ReviewResultModel> get copyWith;
}
