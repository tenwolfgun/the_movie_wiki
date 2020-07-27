// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'detail_movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DetailMovieTearOff {
  const _$DetailMovieTearOff();

// ignore: unused_element
  _DetailMovie call(
      {@required @nullable double budget,
      @required @nullable List<Genre> genres,
      @required @nullable String homepage,
      @required @nullable String imdbId,
      @required @nullable String originalLanguage,
      @required @nullable String originalTitle,
      @required @nullable double popularity,
      @required @nullable List<ProductionCompanies> productionCompanies,
      @required @nullable List<ProductionCountries> productionCountries,
      @required @nullable double revenue,
      @required @nullable double runtime,
      @required @nullable String status,
      @required @nullable String tagline,
      @required @nullable Videos videos,
      @required @nullable SimilarMovies similar,
      @required @nullable Credits credits,
      @required @nullable Images images,
      @required @nullable Reviews reviews}) {
    return _DetailMovie(
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
const $DetailMovie = _$DetailMovieTearOff();

mixin _$DetailMovie {
  @nullable
  double get budget;
  @nullable
  List<Genre> get genres;
  @nullable
  String get homepage;
  @nullable
  String get imdbId;
  @nullable
  String get originalLanguage;
  @nullable
  String get originalTitle;
  @nullable
  double get popularity;
  @nullable
  List<ProductionCompanies> get productionCompanies;
  @nullable
  List<ProductionCountries> get productionCountries;
  @nullable
  double get revenue;
  @nullable
  double get runtime;
  @nullable
  String get status;
  @nullable
  String get tagline;
  @nullable
  Videos get videos;
  @nullable
  SimilarMovies get similar;
  @nullable
  Credits get credits;
  @nullable
  Images get images;
  @nullable
  Reviews get reviews;

  $DetailMovieCopyWith<DetailMovie> get copyWith;
}

abstract class $DetailMovieCopyWith<$Res> {
  factory $DetailMovieCopyWith(
          DetailMovie value, $Res Function(DetailMovie) then) =
      _$DetailMovieCopyWithImpl<$Res>;
  $Res call(
      {@nullable double budget,
      @nullable List<Genre> genres,
      @nullable String homepage,
      @nullable String imdbId,
      @nullable String originalLanguage,
      @nullable String originalTitle,
      @nullable double popularity,
      @nullable List<ProductionCompanies> productionCompanies,
      @nullable List<ProductionCountries> productionCountries,
      @nullable double revenue,
      @nullable double runtime,
      @nullable String status,
      @nullable String tagline,
      @nullable Videos videos,
      @nullable SimilarMovies similar,
      @nullable Credits credits,
      @nullable Images images,
      @nullable Reviews reviews});

  $VideosCopyWith<$Res> get videos;
  $SimilarMoviesCopyWith<$Res> get similar;
  $CreditsCopyWith<$Res> get credits;
  $ImagesCopyWith<$Res> get images;
  $ReviewsCopyWith<$Res> get reviews;
}

class _$DetailMovieCopyWithImpl<$Res> implements $DetailMovieCopyWith<$Res> {
  _$DetailMovieCopyWithImpl(this._value, this._then);

  final DetailMovie _value;
  // ignore: unused_field
  final $Res Function(DetailMovie) _then;

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
      genres: genres == freezed ? _value.genres : genres as List<Genre>,
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
          : productionCompanies as List<ProductionCompanies>,
      productionCountries: productionCountries == freezed
          ? _value.productionCountries
          : productionCountries as List<ProductionCountries>,
      revenue: revenue == freezed ? _value.revenue : revenue as double,
      runtime: runtime == freezed ? _value.runtime : runtime as double,
      status: status == freezed ? _value.status : status as String,
      tagline: tagline == freezed ? _value.tagline : tagline as String,
      videos: videos == freezed ? _value.videos : videos as Videos,
      similar: similar == freezed ? _value.similar : similar as SimilarMovies,
      credits: credits == freezed ? _value.credits : credits as Credits,
      images: images == freezed ? _value.images : images as Images,
      reviews: reviews == freezed ? _value.reviews : reviews as Reviews,
    ));
  }

  @override
  $VideosCopyWith<$Res> get videos {
    if (_value.videos == null) {
      return null;
    }
    return $VideosCopyWith<$Res>(_value.videos, (value) {
      return _then(_value.copyWith(videos: value));
    });
  }

  @override
  $SimilarMoviesCopyWith<$Res> get similar {
    if (_value.similar == null) {
      return null;
    }
    return $SimilarMoviesCopyWith<$Res>(_value.similar, (value) {
      return _then(_value.copyWith(similar: value));
    });
  }

  @override
  $CreditsCopyWith<$Res> get credits {
    if (_value.credits == null) {
      return null;
    }
    return $CreditsCopyWith<$Res>(_value.credits, (value) {
      return _then(_value.copyWith(credits: value));
    });
  }

  @override
  $ImagesCopyWith<$Res> get images {
    if (_value.images == null) {
      return null;
    }
    return $ImagesCopyWith<$Res>(_value.images, (value) {
      return _then(_value.copyWith(images: value));
    });
  }

  @override
  $ReviewsCopyWith<$Res> get reviews {
    if (_value.reviews == null) {
      return null;
    }
    return $ReviewsCopyWith<$Res>(_value.reviews, (value) {
      return _then(_value.copyWith(reviews: value));
    });
  }
}

abstract class _$DetailMovieCopyWith<$Res>
    implements $DetailMovieCopyWith<$Res> {
  factory _$DetailMovieCopyWith(
          _DetailMovie value, $Res Function(_DetailMovie) then) =
      __$DetailMovieCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable double budget,
      @nullable List<Genre> genres,
      @nullable String homepage,
      @nullable String imdbId,
      @nullable String originalLanguage,
      @nullable String originalTitle,
      @nullable double popularity,
      @nullable List<ProductionCompanies> productionCompanies,
      @nullable List<ProductionCountries> productionCountries,
      @nullable double revenue,
      @nullable double runtime,
      @nullable String status,
      @nullable String tagline,
      @nullable Videos videos,
      @nullable SimilarMovies similar,
      @nullable Credits credits,
      @nullable Images images,
      @nullable Reviews reviews});

  @override
  $VideosCopyWith<$Res> get videos;
  @override
  $SimilarMoviesCopyWith<$Res> get similar;
  @override
  $CreditsCopyWith<$Res> get credits;
  @override
  $ImagesCopyWith<$Res> get images;
  @override
  $ReviewsCopyWith<$Res> get reviews;
}

class __$DetailMovieCopyWithImpl<$Res> extends _$DetailMovieCopyWithImpl<$Res>
    implements _$DetailMovieCopyWith<$Res> {
  __$DetailMovieCopyWithImpl(
      _DetailMovie _value, $Res Function(_DetailMovie) _then)
      : super(_value, (v) => _then(v as _DetailMovie));

  @override
  _DetailMovie get _value => super._value as _DetailMovie;

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
    return _then(_DetailMovie(
      budget: budget == freezed ? _value.budget : budget as double,
      genres: genres == freezed ? _value.genres : genres as List<Genre>,
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
          : productionCompanies as List<ProductionCompanies>,
      productionCountries: productionCountries == freezed
          ? _value.productionCountries
          : productionCountries as List<ProductionCountries>,
      revenue: revenue == freezed ? _value.revenue : revenue as double,
      runtime: runtime == freezed ? _value.runtime : runtime as double,
      status: status == freezed ? _value.status : status as String,
      tagline: tagline == freezed ? _value.tagline : tagline as String,
      videos: videos == freezed ? _value.videos : videos as Videos,
      similar: similar == freezed ? _value.similar : similar as SimilarMovies,
      credits: credits == freezed ? _value.credits : credits as Credits,
      images: images == freezed ? _value.images : images as Images,
      reviews: reviews == freezed ? _value.reviews : reviews as Reviews,
    ));
  }
}

class _$_DetailMovie implements _DetailMovie {
  const _$_DetailMovie(
      {@required @nullable this.budget,
      @required @nullable this.genres,
      @required @nullable this.homepage,
      @required @nullable this.imdbId,
      @required @nullable this.originalLanguage,
      @required @nullable this.originalTitle,
      @required @nullable this.popularity,
      @required @nullable this.productionCompanies,
      @required @nullable this.productionCountries,
      @required @nullable this.revenue,
      @required @nullable this.runtime,
      @required @nullable this.status,
      @required @nullable this.tagline,
      @required @nullable this.videos,
      @required @nullable this.similar,
      @required @nullable this.credits,
      @required @nullable this.images,
      @required @nullable this.reviews});

  @override
  @nullable
  final double budget;
  @override
  @nullable
  final List<Genre> genres;
  @override
  @nullable
  final String homepage;
  @override
  @nullable
  final String imdbId;
  @override
  @nullable
  final String originalLanguage;
  @override
  @nullable
  final String originalTitle;
  @override
  @nullable
  final double popularity;
  @override
  @nullable
  final List<ProductionCompanies> productionCompanies;
  @override
  @nullable
  final List<ProductionCountries> productionCountries;
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
  final Videos videos;
  @override
  @nullable
  final SimilarMovies similar;
  @override
  @nullable
  final Credits credits;
  @override
  @nullable
  final Images images;
  @override
  @nullable
  final Reviews reviews;

  @override
  String toString() {
    return 'DetailMovie(budget: $budget, genres: $genres, homepage: $homepage, imdbId: $imdbId, originalLanguage: $originalLanguage, originalTitle: $originalTitle, popularity: $popularity, productionCompanies: $productionCompanies, productionCountries: $productionCountries, revenue: $revenue, runtime: $runtime, status: $status, tagline: $tagline, videos: $videos, similar: $similar, credits: $credits, images: $images, reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DetailMovie &&
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
  _$DetailMovieCopyWith<_DetailMovie> get copyWith =>
      __$DetailMovieCopyWithImpl<_DetailMovie>(this, _$identity);
}

abstract class _DetailMovie implements DetailMovie {
  const factory _DetailMovie(
      {@required @nullable double budget,
      @required @nullable List<Genre> genres,
      @required @nullable String homepage,
      @required @nullable String imdbId,
      @required @nullable String originalLanguage,
      @required @nullable String originalTitle,
      @required @nullable double popularity,
      @required @nullable List<ProductionCompanies> productionCompanies,
      @required @nullable List<ProductionCountries> productionCountries,
      @required @nullable double revenue,
      @required @nullable double runtime,
      @required @nullable String status,
      @required @nullable String tagline,
      @required @nullable Videos videos,
      @required @nullable SimilarMovies similar,
      @required @nullable Credits credits,
      @required @nullable Images images,
      @required @nullable Reviews reviews}) = _$_DetailMovie;

  @override
  @nullable
  double get budget;
  @override
  @nullable
  List<Genre> get genres;
  @override
  @nullable
  String get homepage;
  @override
  @nullable
  String get imdbId;
  @override
  @nullable
  String get originalLanguage;
  @override
  @nullable
  String get originalTitle;
  @override
  @nullable
  double get popularity;
  @override
  @nullable
  List<ProductionCompanies> get productionCompanies;
  @override
  @nullable
  List<ProductionCountries> get productionCountries;
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
  Videos get videos;
  @override
  @nullable
  SimilarMovies get similar;
  @override
  @nullable
  Credits get credits;
  @override
  @nullable
  Images get images;
  @override
  @nullable
  Reviews get reviews;
  @override
  _$DetailMovieCopyWith<_DetailMovie> get copyWith;
}
