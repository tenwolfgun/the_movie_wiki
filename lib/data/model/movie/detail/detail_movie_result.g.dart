// GENERATED CODE - DO NOT MODIFY BY HAND

part of detail_movie_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DetailMovieResult> _$detailMovieResultSerializer =
    new _$DetailMovieResultSerializer();

class _$DetailMovieResultSerializer
    implements StructuredSerializer<DetailMovieResult> {
  @override
  final Iterable<Type> types = const [DetailMovieResult, _$DetailMovieResult];
  @override
  final String wireName = 'DetailMovieResult';

  @override
  Iterable<Object> serialize(Serializers serializers, DetailMovieResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.backdropPath != null) {
      result
        ..add('backdrop_path')
        ..add(serializers.serialize(object.backdropPath,
            specifiedType: const FullType(String)));
    }
    if (object.budget != null) {
      result
        ..add('budget')
        ..add(serializers.serialize(object.budget,
            specifiedType: const FullType(double)));
    }
    if (object.genres != null) {
      result
        ..add('genres')
        ..add(serializers.serialize(object.genres,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Genre)])));
    }
    if (object.homepage != null) {
      result
        ..add('homepage')
        ..add(serializers.serialize(object.homepage,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(double)));
    }
    if (object.imdbId != null) {
      result
        ..add('imdb_id')
        ..add(serializers.serialize(object.imdbId,
            specifiedType: const FullType(String)));
    }
    if (object.originalLanguage != null) {
      result
        ..add('original_language')
        ..add(serializers.serialize(object.originalLanguage,
            specifiedType: const FullType(String)));
    }
    if (object.originalTitle != null) {
      result
        ..add('original_title')
        ..add(serializers.serialize(object.originalTitle,
            specifiedType: const FullType(String)));
    }
    if (object.overview != null) {
      result
        ..add('overview')
        ..add(serializers.serialize(object.overview,
            specifiedType: const FullType(String)));
    }
    if (object.popularity != null) {
      result
        ..add('popularity')
        ..add(serializers.serialize(object.popularity,
            specifiedType: const FullType(double)));
    }
    if (object.posterPath != null) {
      result
        ..add('poster_path')
        ..add(serializers.serialize(object.posterPath,
            specifiedType: const FullType(String)));
    }
    if (object.productionCompanies != null) {
      result
        ..add('production_companies')
        ..add(serializers.serialize(object.productionCompanies,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ProductionCompanies)])));
    }
    if (object.productionCountries != null) {
      result
        ..add('production_countries')
        ..add(serializers.serialize(object.productionCountries,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ProductionCountries)])));
    }
    if (object.releaseDate != null) {
      result
        ..add('release_date')
        ..add(serializers.serialize(object.releaseDate,
            specifiedType: const FullType(String)));
    }
    if (object.revenue != null) {
      result
        ..add('revenue')
        ..add(serializers.serialize(object.revenue,
            specifiedType: const FullType(double)));
    }
    if (object.runtime != null) {
      result
        ..add('runtime')
        ..add(serializers.serialize(object.runtime,
            specifiedType: const FullType(double)));
    }
    if (object.spokenLanguages != null) {
      result
        ..add('spoken_languages')
        ..add(serializers.serialize(object.spokenLanguages,
            specifiedType: const FullType(
                BuiltList, const [const FullType(SpokenLanguages)])));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(String)));
    }
    if (object.tagline != null) {
      result
        ..add('tagline')
        ..add(serializers.serialize(object.tagline,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.voteAverage != null) {
      result
        ..add('vote_average')
        ..add(serializers.serialize(object.voteAverage,
            specifiedType: const FullType(double)));
    }
    if (object.voteCount != null) {
      result
        ..add('vote_count')
        ..add(serializers.serialize(object.voteCount,
            specifiedType: const FullType(double)));
    }
    if (object.videos != null) {
      result
        ..add('videos')
        ..add(serializers.serialize(object.videos,
            specifiedType: const FullType(VideosResult)));
    }
    if (object.similar != null) {
      result
        ..add('similar')
        ..add(serializers.serialize(object.similar,
            specifiedType: const FullType(SimilarMovies)));
    }
    if (object.credits != null) {
      result
        ..add('credits')
        ..add(serializers.serialize(object.credits,
            specifiedType: const FullType(Credits)));
    }
    if (object.images != null) {
      result
        ..add('images')
        ..add(serializers.serialize(object.images,
            specifiedType: const FullType(Images)));
    }
    if (object.reviews != null) {
      result
        ..add('reviews')
        ..add(serializers.serialize(object.reviews,
            specifiedType: const FullType(Reviews)));
    }
    if (object.releaseDates != null) {
      result
        ..add('release_dates')
        ..add(serializers.serialize(object.releaseDates,
            specifiedType: const FullType(ReleaseDates)));
    }
    return result;
  }

  @override
  DetailMovieResult deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DetailMovieResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'backdrop_path':
          result.backdropPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'budget':
          result.budget = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Genre)]))
              as BuiltList<dynamic>);
          break;
        case 'homepage':
          result.homepage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'imdb_id':
          result.imdbId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'original_language':
          result.originalLanguage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'original_title':
          result.originalTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'poster_path':
          result.posterPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'production_companies':
          result.productionCompanies.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ProductionCompanies)]))
              as BuiltList<dynamic>);
          break;
        case 'production_countries':
          result.productionCountries.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ProductionCountries)]))
              as BuiltList<dynamic>);
          break;
        case 'release_date':
          result.releaseDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'revenue':
          result.revenue = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'runtime':
          result.runtime = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'spoken_languages':
          result.spokenLanguages.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SpokenLanguages)]))
              as BuiltList<dynamic>);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tagline':
          result.tagline = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vote_average':
          result.voteAverage = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'vote_count':
          result.voteCount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'videos':
          result.videos.replace(serializers.deserialize(value,
              specifiedType: const FullType(VideosResult)) as VideosResult);
          break;
        case 'similar':
          result.similar.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimilarMovies)) as SimilarMovies);
          break;
        case 'credits':
          result.credits.replace(serializers.deserialize(value,
              specifiedType: const FullType(Credits)) as Credits);
          break;
        case 'images':
          result.images.replace(serializers.deserialize(value,
              specifiedType: const FullType(Images)) as Images);
          break;
        case 'reviews':
          result.reviews.replace(serializers.deserialize(value,
              specifiedType: const FullType(Reviews)) as Reviews);
          break;
        case 'release_dates':
          result.releaseDates.replace(serializers.deserialize(value,
              specifiedType: const FullType(ReleaseDates)) as ReleaseDates);
          break;
      }
    }

    return result.build();
  }
}

class _$DetailMovieResult extends DetailMovieResult {
  @override
  final String backdropPath;
  @override
  final double budget;
  @override
  final BuiltList<Genre> genres;
  @override
  final String homepage;
  @override
  final double id;
  @override
  final String imdbId;
  @override
  final String originalLanguage;
  @override
  final String originalTitle;
  @override
  final String overview;
  @override
  final double popularity;
  @override
  final String posterPath;
  @override
  final BuiltList<ProductionCompanies> productionCompanies;
  @override
  final BuiltList<ProductionCountries> productionCountries;
  @override
  final String releaseDate;
  @override
  final double revenue;
  @override
  final double runtime;
  @override
  final BuiltList<SpokenLanguages> spokenLanguages;
  @override
  final String status;
  @override
  final String tagline;
  @override
  final String title;
  @override
  final double voteAverage;
  @override
  final double voteCount;
  @override
  final VideosResult videos;
  @override
  final SimilarMovies similar;
  @override
  final Credits credits;
  @override
  final Images images;
  @override
  final Reviews reviews;
  @override
  final ReleaseDates releaseDates;

  factory _$DetailMovieResult(
          [void Function(DetailMovieResultBuilder) updates]) =>
      (new DetailMovieResultBuilder()..update(updates)).build();

  _$DetailMovieResult._(
      {this.backdropPath,
      this.budget,
      this.genres,
      this.homepage,
      this.id,
      this.imdbId,
      this.originalLanguage,
      this.originalTitle,
      this.overview,
      this.popularity,
      this.posterPath,
      this.productionCompanies,
      this.productionCountries,
      this.releaseDate,
      this.revenue,
      this.runtime,
      this.spokenLanguages,
      this.status,
      this.tagline,
      this.title,
      this.voteAverage,
      this.voteCount,
      this.videos,
      this.similar,
      this.credits,
      this.images,
      this.reviews,
      this.releaseDates})
      : super._();

  @override
  DetailMovieResult rebuild(void Function(DetailMovieResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetailMovieResultBuilder toBuilder() =>
      new DetailMovieResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetailMovieResult &&
        backdropPath == other.backdropPath &&
        budget == other.budget &&
        genres == other.genres &&
        homepage == other.homepage &&
        id == other.id &&
        imdbId == other.imdbId &&
        originalLanguage == other.originalLanguage &&
        originalTitle == other.originalTitle &&
        overview == other.overview &&
        popularity == other.popularity &&
        posterPath == other.posterPath &&
        productionCompanies == other.productionCompanies &&
        productionCountries == other.productionCountries &&
        releaseDate == other.releaseDate &&
        revenue == other.revenue &&
        runtime == other.runtime &&
        spokenLanguages == other.spokenLanguages &&
        status == other.status &&
        tagline == other.tagline &&
        title == other.title &&
        voteAverage == other.voteAverage &&
        voteCount == other.voteCount &&
        videos == other.videos &&
        similar == other.similar &&
        credits == other.credits &&
        images == other.images &&
        reviews == other.reviews &&
        releaseDates == other.releaseDates;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, backdropPath.hashCode), budget.hashCode), genres.hashCode), homepage.hashCode), id.hashCode), imdbId.hashCode), originalLanguage.hashCode), originalTitle.hashCode), overview.hashCode),
                                                                                popularity.hashCode),
                                                                            posterPath.hashCode),
                                                                        productionCompanies.hashCode),
                                                                    productionCountries.hashCode),
                                                                releaseDate.hashCode),
                                                            revenue.hashCode),
                                                        runtime.hashCode),
                                                    spokenLanguages.hashCode),
                                                status.hashCode),
                                            tagline.hashCode),
                                        title.hashCode),
                                    voteAverage.hashCode),
                                voteCount.hashCode),
                            videos.hashCode),
                        similar.hashCode),
                    credits.hashCode),
                images.hashCode),
            reviews.hashCode),
        releaseDates.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DetailMovieResult')
          ..add('backdropPath', backdropPath)
          ..add('budget', budget)
          ..add('genres', genres)
          ..add('homepage', homepage)
          ..add('id', id)
          ..add('imdbId', imdbId)
          ..add('originalLanguage', originalLanguage)
          ..add('originalTitle', originalTitle)
          ..add('overview', overview)
          ..add('popularity', popularity)
          ..add('posterPath', posterPath)
          ..add('productionCompanies', productionCompanies)
          ..add('productionCountries', productionCountries)
          ..add('releaseDate', releaseDate)
          ..add('revenue', revenue)
          ..add('runtime', runtime)
          ..add('spokenLanguages', spokenLanguages)
          ..add('status', status)
          ..add('tagline', tagline)
          ..add('title', title)
          ..add('voteAverage', voteAverage)
          ..add('voteCount', voteCount)
          ..add('videos', videos)
          ..add('similar', similar)
          ..add('credits', credits)
          ..add('images', images)
          ..add('reviews', reviews)
          ..add('releaseDates', releaseDates))
        .toString();
  }
}

class DetailMovieResultBuilder
    implements Builder<DetailMovieResult, DetailMovieResultBuilder> {
  _$DetailMovieResult _$v;

  String _backdropPath;
  String get backdropPath => _$this._backdropPath;
  set backdropPath(String backdropPath) => _$this._backdropPath = backdropPath;

  double _budget;
  double get budget => _$this._budget;
  set budget(double budget) => _$this._budget = budget;

  ListBuilder<Genre> _genres;
  ListBuilder<Genre> get genres => _$this._genres ??= new ListBuilder<Genre>();
  set genres(ListBuilder<Genre> genres) => _$this._genres = genres;

  String _homepage;
  String get homepage => _$this._homepage;
  set homepage(String homepage) => _$this._homepage = homepage;

  double _id;
  double get id => _$this._id;
  set id(double id) => _$this._id = id;

  String _imdbId;
  String get imdbId => _$this._imdbId;
  set imdbId(String imdbId) => _$this._imdbId = imdbId;

  String _originalLanguage;
  String get originalLanguage => _$this._originalLanguage;
  set originalLanguage(String originalLanguage) =>
      _$this._originalLanguage = originalLanguage;

  String _originalTitle;
  String get originalTitle => _$this._originalTitle;
  set originalTitle(String originalTitle) =>
      _$this._originalTitle = originalTitle;

  String _overview;
  String get overview => _$this._overview;
  set overview(String overview) => _$this._overview = overview;

  double _popularity;
  double get popularity => _$this._popularity;
  set popularity(double popularity) => _$this._popularity = popularity;

  String _posterPath;
  String get posterPath => _$this._posterPath;
  set posterPath(String posterPath) => _$this._posterPath = posterPath;

  ListBuilder<ProductionCompanies> _productionCompanies;
  ListBuilder<ProductionCompanies> get productionCompanies =>
      _$this._productionCompanies ??= new ListBuilder<ProductionCompanies>();
  set productionCompanies(
          ListBuilder<ProductionCompanies> productionCompanies) =>
      _$this._productionCompanies = productionCompanies;

  ListBuilder<ProductionCountries> _productionCountries;
  ListBuilder<ProductionCountries> get productionCountries =>
      _$this._productionCountries ??= new ListBuilder<ProductionCountries>();
  set productionCountries(
          ListBuilder<ProductionCountries> productionCountries) =>
      _$this._productionCountries = productionCountries;

  String _releaseDate;
  String get releaseDate => _$this._releaseDate;
  set releaseDate(String releaseDate) => _$this._releaseDate = releaseDate;

  double _revenue;
  double get revenue => _$this._revenue;
  set revenue(double revenue) => _$this._revenue = revenue;

  double _runtime;
  double get runtime => _$this._runtime;
  set runtime(double runtime) => _$this._runtime = runtime;

  ListBuilder<SpokenLanguages> _spokenLanguages;
  ListBuilder<SpokenLanguages> get spokenLanguages =>
      _$this._spokenLanguages ??= new ListBuilder<SpokenLanguages>();
  set spokenLanguages(ListBuilder<SpokenLanguages> spokenLanguages) =>
      _$this._spokenLanguages = spokenLanguages;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  String _tagline;
  String get tagline => _$this._tagline;
  set tagline(String tagline) => _$this._tagline = tagline;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  double _voteAverage;
  double get voteAverage => _$this._voteAverage;
  set voteAverage(double voteAverage) => _$this._voteAverage = voteAverage;

  double _voteCount;
  double get voteCount => _$this._voteCount;
  set voteCount(double voteCount) => _$this._voteCount = voteCount;

  VideosResultBuilder _videos;
  VideosResultBuilder get videos =>
      _$this._videos ??= new VideosResultBuilder();
  set videos(VideosResultBuilder videos) => _$this._videos = videos;

  SimilarMoviesBuilder _similar;
  SimilarMoviesBuilder get similar =>
      _$this._similar ??= new SimilarMoviesBuilder();
  set similar(SimilarMoviesBuilder similar) => _$this._similar = similar;

  CreditsBuilder _credits;
  CreditsBuilder get credits => _$this._credits ??= new CreditsBuilder();
  set credits(CreditsBuilder credits) => _$this._credits = credits;

  ImagesBuilder _images;
  ImagesBuilder get images => _$this._images ??= new ImagesBuilder();
  set images(ImagesBuilder images) => _$this._images = images;

  ReviewsBuilder _reviews;
  ReviewsBuilder get reviews => _$this._reviews ??= new ReviewsBuilder();
  set reviews(ReviewsBuilder reviews) => _$this._reviews = reviews;

  ReleaseDatesBuilder _releaseDates;
  ReleaseDatesBuilder get releaseDates =>
      _$this._releaseDates ??= new ReleaseDatesBuilder();
  set releaseDates(ReleaseDatesBuilder releaseDates) =>
      _$this._releaseDates = releaseDates;

  DetailMovieResultBuilder();

  DetailMovieResultBuilder get _$this {
    if (_$v != null) {
      _backdropPath = _$v.backdropPath;
      _budget = _$v.budget;
      _genres = _$v.genres?.toBuilder();
      _homepage = _$v.homepage;
      _id = _$v.id;
      _imdbId = _$v.imdbId;
      _originalLanguage = _$v.originalLanguage;
      _originalTitle = _$v.originalTitle;
      _overview = _$v.overview;
      _popularity = _$v.popularity;
      _posterPath = _$v.posterPath;
      _productionCompanies = _$v.productionCompanies?.toBuilder();
      _productionCountries = _$v.productionCountries?.toBuilder();
      _releaseDate = _$v.releaseDate;
      _revenue = _$v.revenue;
      _runtime = _$v.runtime;
      _spokenLanguages = _$v.spokenLanguages?.toBuilder();
      _status = _$v.status;
      _tagline = _$v.tagline;
      _title = _$v.title;
      _voteAverage = _$v.voteAverage;
      _voteCount = _$v.voteCount;
      _videos = _$v.videos?.toBuilder();
      _similar = _$v.similar?.toBuilder();
      _credits = _$v.credits?.toBuilder();
      _images = _$v.images?.toBuilder();
      _reviews = _$v.reviews?.toBuilder();
      _releaseDates = _$v.releaseDates?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetailMovieResult other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DetailMovieResult;
  }

  @override
  void update(void Function(DetailMovieResultBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DetailMovieResult build() {
    _$DetailMovieResult _$result;
    try {
      _$result = _$v ??
          new _$DetailMovieResult._(
              backdropPath: backdropPath,
              budget: budget,
              genres: _genres?.build(),
              homepage: homepage,
              id: id,
              imdbId: imdbId,
              originalLanguage: originalLanguage,
              originalTitle: originalTitle,
              overview: overview,
              popularity: popularity,
              posterPath: posterPath,
              productionCompanies: _productionCompanies?.build(),
              productionCountries: _productionCountries?.build(),
              releaseDate: releaseDate,
              revenue: revenue,
              runtime: runtime,
              spokenLanguages: _spokenLanguages?.build(),
              status: status,
              tagline: tagline,
              title: title,
              voteAverage: voteAverage,
              voteCount: voteCount,
              videos: _videos?.build(),
              similar: _similar?.build(),
              credits: _credits?.build(),
              images: _images?.build(),
              reviews: _reviews?.build(),
              releaseDates: _releaseDates?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'genres';
        _genres?.build();

        _$failedField = 'productionCompanies';
        _productionCompanies?.build();
        _$failedField = 'productionCountries';
        _productionCountries?.build();

        _$failedField = 'spokenLanguages';
        _spokenLanguages?.build();

        _$failedField = 'videos';
        _videos?.build();
        _$failedField = 'similar';
        _similar?.build();
        _$failedField = 'credits';
        _credits?.build();
        _$failedField = 'images';
        _images?.build();
        _$failedField = 'reviews';
        _reviews?.build();
        _$failedField = 'releaseDates';
        _releaseDates?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DetailMovieResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
