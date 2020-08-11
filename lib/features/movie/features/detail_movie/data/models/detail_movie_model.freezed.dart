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

SimilarMoviesModel _$SimilarMoviesModelFromJson(Map<String, dynamic> json) {
  return _SimilarMoviesModel.fromJson(json);
}

class _$SimilarMoviesModelTearOff {
  const _$SimilarMoviesModelTearOff();

// ignore: unused_element
  _SimilarMoviesModel call(
      {@required @nullable List<MovieResultModel> results}) {
    return _SimilarMoviesModel(
      results: results,
    );
  }
}

// ignore: unused_element
const $SimilarMoviesModel = _$SimilarMoviesModelTearOff();

mixin _$SimilarMoviesModel {
  @nullable
  List<MovieResultModel> get results;

  Map<String, dynamic> toJson();
  $SimilarMoviesModelCopyWith<SimilarMoviesModel> get copyWith;
}

abstract class $SimilarMoviesModelCopyWith<$Res> {
  factory $SimilarMoviesModelCopyWith(
          SimilarMoviesModel value, $Res Function(SimilarMoviesModel) then) =
      _$SimilarMoviesModelCopyWithImpl<$Res>;
  $Res call({@nullable List<MovieResultModel> results});
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
      results: results == freezed
          ? _value.results
          : results as List<MovieResultModel>,
    ));
  }
}

abstract class _$SimilarMoviesModelCopyWith<$Res>
    implements $SimilarMoviesModelCopyWith<$Res> {
  factory _$SimilarMoviesModelCopyWith(
          _SimilarMoviesModel value, $Res Function(_SimilarMoviesModel) then) =
      __$SimilarMoviesModelCopyWithImpl<$Res>;
  @override
  $Res call({@nullable List<MovieResultModel> results});
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
      results: results == freezed
          ? _value.results
          : results as List<MovieResultModel>,
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
  final List<MovieResultModel> results;

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
          {@required @nullable List<MovieResultModel> results}) =
      _$_SimilarMoviesModel;

  factory _SimilarMoviesModel.fromJson(Map<String, dynamic> json) =
      _$_SimilarMoviesModel.fromJson;

  @override
  @nullable
  List<MovieResultModel> get results;
  @override
  _$SimilarMoviesModelCopyWith<_SimilarMoviesModel> get copyWith;
}
