// GENERATED CODE - DO NOT MODIFY BY HAND

part of detail_tv_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DetailTvResult> _$detailTvResultSerializer =
    new _$DetailTvResultSerializer();

class _$DetailTvResultSerializer
    implements StructuredSerializer<DetailTvResult> {
  @override
  final Iterable<Type> types = const [DetailTvResult, _$DetailTvResult];
  @override
  final String wireName = 'DetailTvResult';

  @override
  Iterable<Object> serialize(Serializers serializers, DetailTvResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.backdropPath != null) {
      result
        ..add('backdrop_path')
        ..add(serializers.serialize(object.backdropPath,
            specifiedType: const FullType(String)));
    }
    if (object.createdBy != null) {
      result
        ..add('created_by')
        ..add(serializers.serialize(object.createdBy,
            specifiedType:
                const FullType(BuiltList, const [const FullType(CreatedBy)])));
    }
    if (object.episodeRunTime != null) {
      result
        ..add('episode_run_time')
        ..add(serializers.serialize(object.episodeRunTime,
            specifiedType:
                const FullType(BuiltList, const [const FullType(double)])));
    }
    if (object.firstAirDate != null) {
      result
        ..add('first_air_date')
        ..add(serializers.serialize(object.firstAirDate,
            specifiedType: const FullType(String)));
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
    if (object.languages != null) {
      result
        ..add('languages')
        ..add(serializers.serialize(object.languages,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.lastAirDate != null) {
      result
        ..add('last_air_date')
        ..add(serializers.serialize(object.lastAirDate,
            specifiedType: const FullType(String)));
    }
    if (object.lastEpisodeToAir != null) {
      result
        ..add('last_episode_to_air')
        ..add(serializers.serialize(object.lastEpisodeToAir,
            specifiedType: const FullType(LastEpisodeToAir)));
    }
    if (object.nextEpisodeToAir != null) {
      result
        ..add('next_episode_to_air')
        ..add(serializers.serialize(object.nextEpisodeToAir,
            specifiedType: const FullType(LastEpisodeToAir)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.networks != null) {
      result
        ..add('networks')
        ..add(serializers.serialize(object.networks,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Networks)])));
    }
    if (object.numberOfEpisodes != null) {
      result
        ..add('number_of_episodes')
        ..add(serializers.serialize(object.numberOfEpisodes,
            specifiedType: const FullType(double)));
    }
    if (object.numberOfSeasons != null) {
      result
        ..add('number_of_seasons')
        ..add(serializers.serialize(object.numberOfSeasons,
            specifiedType: const FullType(double)));
    }
    if (object.originCountry != null) {
      result
        ..add('origin_country')
        ..add(serializers.serialize(object.originCountry,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.originalLanguage != null) {
      result
        ..add('original_language')
        ..add(serializers.serialize(object.originalLanguage,
            specifiedType: const FullType(String)));
    }
    if (object.originalName != null) {
      result
        ..add('original_name')
        ..add(serializers.serialize(object.originalName,
            specifiedType: const FullType(String)));
    }
    if (object.overview != null) {
      result
        ..add('overview')
        ..add(serializers.serialize(object.overview,
            specifiedType: const FullType(String)));
    }
    if (object.productionCompanies != null) {
      result
        ..add('production_companies')
        ..add(serializers.serialize(object.productionCompanies,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ProductionCompanies)])));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.seasons != null) {
      result
        ..add('seasons')
        ..add(serializers.serialize(object.seasons,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Seasons)])));
    }
    if (object.images != null) {
      result
        ..add('images')
        ..add(serializers.serialize(object.images,
            specifiedType: const FullType(Images)));
    }
    if (object.credits != null) {
      result
        ..add('credits')
        ..add(serializers.serialize(object.credits,
            specifiedType: const FullType(Credits)));
    }
    if (object.videos != null) {
      result
        ..add('videos')
        ..add(serializers.serialize(object.videos,
            specifiedType: const FullType(VideosResult)));
    }
    if (object.reviews != null) {
      result
        ..add('reviews')
        ..add(serializers.serialize(object.reviews,
            specifiedType: const FullType(Reviews)));
    }
    if (object.similar != null) {
      result
        ..add('similar')
        ..add(serializers.serialize(object.similar,
            specifiedType: const FullType(SimilarTv)));
    }
    if (object.voteAverage != null) {
      result
        ..add('vote_average')
        ..add(serializers.serialize(object.voteAverage,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  DetailTvResult deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DetailTvResultBuilder();

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
        case 'created_by':
          result.createdBy.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CreatedBy)]))
              as BuiltList<dynamic>);
          break;
        case 'episode_run_time':
          result.episodeRunTime.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(double)]))
              as BuiltList<dynamic>);
          break;
        case 'first_air_date':
          result.firstAirDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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
        case 'languages':
          result.languages.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
          break;
        case 'last_air_date':
          result.lastAirDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'last_episode_to_air':
          result.lastEpisodeToAir.replace(serializers.deserialize(value,
                  specifiedType: const FullType(LastEpisodeToAir))
              as LastEpisodeToAir);
          break;
        case 'next_episode_to_air':
          result.nextEpisodeToAir.replace(serializers.deserialize(value,
                  specifiedType: const FullType(LastEpisodeToAir))
              as LastEpisodeToAir);
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'networks':
          result.networks.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Networks)]))
              as BuiltList<dynamic>);
          break;
        case 'number_of_episodes':
          result.numberOfEpisodes = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'number_of_seasons':
          result.numberOfSeasons = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'origin_country':
          result.originCountry.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
          break;
        case 'original_language':
          result.originalLanguage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'original_name':
          result.originalName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'production_companies':
          result.productionCompanies.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ProductionCompanies)]))
              as BuiltList<dynamic>);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'seasons':
          result.seasons.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Seasons)]))
              as BuiltList<dynamic>);
          break;
        case 'images':
          result.images.replace(serializers.deserialize(value,
              specifiedType: const FullType(Images)) as Images);
          break;
        case 'credits':
          result.credits.replace(serializers.deserialize(value,
              specifiedType: const FullType(Credits)) as Credits);
          break;
        case 'videos':
          result.videos.replace(serializers.deserialize(value,
              specifiedType: const FullType(VideosResult)) as VideosResult);
          break;
        case 'reviews':
          result.reviews.replace(serializers.deserialize(value,
              specifiedType: const FullType(Reviews)) as Reviews);
          break;
        case 'similar':
          result.similar.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimilarTv)) as SimilarTv);
          break;
        case 'vote_average':
          result.voteAverage = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$DetailTvResult extends DetailTvResult {
  @override
  final String backdropPath;
  @override
  final BuiltList<CreatedBy> createdBy;
  @override
  final BuiltList<double> episodeRunTime;
  @override
  final String firstAirDate;
  @override
  final BuiltList<Genre> genres;
  @override
  final String homepage;
  @override
  final double id;
  @override
  final BuiltList<String> languages;
  @override
  final String lastAirDate;
  @override
  final LastEpisodeToAir lastEpisodeToAir;
  @override
  final LastEpisodeToAir nextEpisodeToAir;
  @override
  final String name;
  @override
  final BuiltList<Networks> networks;
  @override
  final double numberOfEpisodes;
  @override
  final double numberOfSeasons;
  @override
  final BuiltList<String> originCountry;
  @override
  final String originalLanguage;
  @override
  final String originalName;
  @override
  final String overview;
  @override
  final BuiltList<ProductionCompanies> productionCompanies;
  @override
  final String status;
  @override
  final String type;
  @override
  final BuiltList<Seasons> seasons;
  @override
  final Images images;
  @override
  final Credits credits;
  @override
  final VideosResult videos;
  @override
  final Reviews reviews;
  @override
  final SimilarTv similar;
  @override
  final double voteAverage;

  factory _$DetailTvResult([void Function(DetailTvResultBuilder) updates]) =>
      (new DetailTvResultBuilder()..update(updates)).build();

  _$DetailTvResult._(
      {this.backdropPath,
      this.createdBy,
      this.episodeRunTime,
      this.firstAirDate,
      this.genres,
      this.homepage,
      this.id,
      this.languages,
      this.lastAirDate,
      this.lastEpisodeToAir,
      this.nextEpisodeToAir,
      this.name,
      this.networks,
      this.numberOfEpisodes,
      this.numberOfSeasons,
      this.originCountry,
      this.originalLanguage,
      this.originalName,
      this.overview,
      this.productionCompanies,
      this.status,
      this.type,
      this.seasons,
      this.images,
      this.credits,
      this.videos,
      this.reviews,
      this.similar,
      this.voteAverage})
      : super._();

  @override
  DetailTvResult rebuild(void Function(DetailTvResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetailTvResultBuilder toBuilder() =>
      new DetailTvResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetailTvResult &&
        backdropPath == other.backdropPath &&
        createdBy == other.createdBy &&
        episodeRunTime == other.episodeRunTime &&
        firstAirDate == other.firstAirDate &&
        genres == other.genres &&
        homepage == other.homepage &&
        id == other.id &&
        languages == other.languages &&
        lastAirDate == other.lastAirDate &&
        lastEpisodeToAir == other.lastEpisodeToAir &&
        nextEpisodeToAir == other.nextEpisodeToAir &&
        name == other.name &&
        networks == other.networks &&
        numberOfEpisodes == other.numberOfEpisodes &&
        numberOfSeasons == other.numberOfSeasons &&
        originCountry == other.originCountry &&
        originalLanguage == other.originalLanguage &&
        originalName == other.originalName &&
        overview == other.overview &&
        productionCompanies == other.productionCompanies &&
        status == other.status &&
        type == other.type &&
        seasons == other.seasons &&
        images == other.images &&
        credits == other.credits &&
        videos == other.videos &&
        reviews == other.reviews &&
        similar == other.similar &&
        voteAverage == other.voteAverage;
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, backdropPath.hashCode), createdBy.hashCode), episodeRunTime.hashCode), firstAirDate.hashCode), genres.hashCode), homepage.hashCode), id.hashCode), languages.hashCode), lastAirDate.hashCode), lastEpisodeToAir.hashCode),
                                                                                nextEpisodeToAir.hashCode),
                                                                            name.hashCode),
                                                                        networks.hashCode),
                                                                    numberOfEpisodes.hashCode),
                                                                numberOfSeasons.hashCode),
                                                            originCountry.hashCode),
                                                        originalLanguage.hashCode),
                                                    originalName.hashCode),
                                                overview.hashCode),
                                            productionCompanies.hashCode),
                                        status.hashCode),
                                    type.hashCode),
                                seasons.hashCode),
                            images.hashCode),
                        credits.hashCode),
                    videos.hashCode),
                reviews.hashCode),
            similar.hashCode),
        voteAverage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DetailTvResult')
          ..add('backdropPath', backdropPath)
          ..add('createdBy', createdBy)
          ..add('episodeRunTime', episodeRunTime)
          ..add('firstAirDate', firstAirDate)
          ..add('genres', genres)
          ..add('homepage', homepage)
          ..add('id', id)
          ..add('languages', languages)
          ..add('lastAirDate', lastAirDate)
          ..add('lastEpisodeToAir', lastEpisodeToAir)
          ..add('nextEpisodeToAir', nextEpisodeToAir)
          ..add('name', name)
          ..add('networks', networks)
          ..add('numberOfEpisodes', numberOfEpisodes)
          ..add('numberOfSeasons', numberOfSeasons)
          ..add('originCountry', originCountry)
          ..add('originalLanguage', originalLanguage)
          ..add('originalName', originalName)
          ..add('overview', overview)
          ..add('productionCompanies', productionCompanies)
          ..add('status', status)
          ..add('type', type)
          ..add('seasons', seasons)
          ..add('images', images)
          ..add('credits', credits)
          ..add('videos', videos)
          ..add('reviews', reviews)
          ..add('similar', similar)
          ..add('voteAverage', voteAverage))
        .toString();
  }
}

class DetailTvResultBuilder
    implements Builder<DetailTvResult, DetailTvResultBuilder> {
  _$DetailTvResult _$v;

  String _backdropPath;
  String get backdropPath => _$this._backdropPath;
  set backdropPath(String backdropPath) => _$this._backdropPath = backdropPath;

  ListBuilder<CreatedBy> _createdBy;
  ListBuilder<CreatedBy> get createdBy =>
      _$this._createdBy ??= new ListBuilder<CreatedBy>();
  set createdBy(ListBuilder<CreatedBy> createdBy) =>
      _$this._createdBy = createdBy;

  ListBuilder<double> _episodeRunTime;
  ListBuilder<double> get episodeRunTime =>
      _$this._episodeRunTime ??= new ListBuilder<double>();
  set episodeRunTime(ListBuilder<double> episodeRunTime) =>
      _$this._episodeRunTime = episodeRunTime;

  String _firstAirDate;
  String get firstAirDate => _$this._firstAirDate;
  set firstAirDate(String firstAirDate) => _$this._firstAirDate = firstAirDate;

  ListBuilder<Genre> _genres;
  ListBuilder<Genre> get genres => _$this._genres ??= new ListBuilder<Genre>();
  set genres(ListBuilder<Genre> genres) => _$this._genres = genres;

  String _homepage;
  String get homepage => _$this._homepage;
  set homepage(String homepage) => _$this._homepage = homepage;

  double _id;
  double get id => _$this._id;
  set id(double id) => _$this._id = id;

  ListBuilder<String> _languages;
  ListBuilder<String> get languages =>
      _$this._languages ??= new ListBuilder<String>();
  set languages(ListBuilder<String> languages) => _$this._languages = languages;

  String _lastAirDate;
  String get lastAirDate => _$this._lastAirDate;
  set lastAirDate(String lastAirDate) => _$this._lastAirDate = lastAirDate;

  LastEpisodeToAirBuilder _lastEpisodeToAir;
  LastEpisodeToAirBuilder get lastEpisodeToAir =>
      _$this._lastEpisodeToAir ??= new LastEpisodeToAirBuilder();
  set lastEpisodeToAir(LastEpisodeToAirBuilder lastEpisodeToAir) =>
      _$this._lastEpisodeToAir = lastEpisodeToAir;

  LastEpisodeToAirBuilder _nextEpisodeToAir;
  LastEpisodeToAirBuilder get nextEpisodeToAir =>
      _$this._nextEpisodeToAir ??= new LastEpisodeToAirBuilder();
  set nextEpisodeToAir(LastEpisodeToAirBuilder nextEpisodeToAir) =>
      _$this._nextEpisodeToAir = nextEpisodeToAir;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ListBuilder<Networks> _networks;
  ListBuilder<Networks> get networks =>
      _$this._networks ??= new ListBuilder<Networks>();
  set networks(ListBuilder<Networks> networks) => _$this._networks = networks;

  double _numberOfEpisodes;
  double get numberOfEpisodes => _$this._numberOfEpisodes;
  set numberOfEpisodes(double numberOfEpisodes) =>
      _$this._numberOfEpisodes = numberOfEpisodes;

  double _numberOfSeasons;
  double get numberOfSeasons => _$this._numberOfSeasons;
  set numberOfSeasons(double numberOfSeasons) =>
      _$this._numberOfSeasons = numberOfSeasons;

  ListBuilder<String> _originCountry;
  ListBuilder<String> get originCountry =>
      _$this._originCountry ??= new ListBuilder<String>();
  set originCountry(ListBuilder<String> originCountry) =>
      _$this._originCountry = originCountry;

  String _originalLanguage;
  String get originalLanguage => _$this._originalLanguage;
  set originalLanguage(String originalLanguage) =>
      _$this._originalLanguage = originalLanguage;

  String _originalName;
  String get originalName => _$this._originalName;
  set originalName(String originalName) => _$this._originalName = originalName;

  String _overview;
  String get overview => _$this._overview;
  set overview(String overview) => _$this._overview = overview;

  ListBuilder<ProductionCompanies> _productionCompanies;
  ListBuilder<ProductionCompanies> get productionCompanies =>
      _$this._productionCompanies ??= new ListBuilder<ProductionCompanies>();
  set productionCompanies(
          ListBuilder<ProductionCompanies> productionCompanies) =>
      _$this._productionCompanies = productionCompanies;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  ListBuilder<Seasons> _seasons;
  ListBuilder<Seasons> get seasons =>
      _$this._seasons ??= new ListBuilder<Seasons>();
  set seasons(ListBuilder<Seasons> seasons) => _$this._seasons = seasons;

  ImagesBuilder _images;
  ImagesBuilder get images => _$this._images ??= new ImagesBuilder();
  set images(ImagesBuilder images) => _$this._images = images;

  CreditsBuilder _credits;
  CreditsBuilder get credits => _$this._credits ??= new CreditsBuilder();
  set credits(CreditsBuilder credits) => _$this._credits = credits;

  VideosResultBuilder _videos;
  VideosResultBuilder get videos =>
      _$this._videos ??= new VideosResultBuilder();
  set videos(VideosResultBuilder videos) => _$this._videos = videos;

  ReviewsBuilder _reviews;
  ReviewsBuilder get reviews => _$this._reviews ??= new ReviewsBuilder();
  set reviews(ReviewsBuilder reviews) => _$this._reviews = reviews;

  SimilarTvBuilder _similar;
  SimilarTvBuilder get similar => _$this._similar ??= new SimilarTvBuilder();
  set similar(SimilarTvBuilder similar) => _$this._similar = similar;

  double _voteAverage;
  double get voteAverage => _$this._voteAverage;
  set voteAverage(double voteAverage) => _$this._voteAverage = voteAverage;

  DetailTvResultBuilder();

  DetailTvResultBuilder get _$this {
    if (_$v != null) {
      _backdropPath = _$v.backdropPath;
      _createdBy = _$v.createdBy?.toBuilder();
      _episodeRunTime = _$v.episodeRunTime?.toBuilder();
      _firstAirDate = _$v.firstAirDate;
      _genres = _$v.genres?.toBuilder();
      _homepage = _$v.homepage;
      _id = _$v.id;
      _languages = _$v.languages?.toBuilder();
      _lastAirDate = _$v.lastAirDate;
      _lastEpisodeToAir = _$v.lastEpisodeToAir?.toBuilder();
      _nextEpisodeToAir = _$v.nextEpisodeToAir?.toBuilder();
      _name = _$v.name;
      _networks = _$v.networks?.toBuilder();
      _numberOfEpisodes = _$v.numberOfEpisodes;
      _numberOfSeasons = _$v.numberOfSeasons;
      _originCountry = _$v.originCountry?.toBuilder();
      _originalLanguage = _$v.originalLanguage;
      _originalName = _$v.originalName;
      _overview = _$v.overview;
      _productionCompanies = _$v.productionCompanies?.toBuilder();
      _status = _$v.status;
      _type = _$v.type;
      _seasons = _$v.seasons?.toBuilder();
      _images = _$v.images?.toBuilder();
      _credits = _$v.credits?.toBuilder();
      _videos = _$v.videos?.toBuilder();
      _reviews = _$v.reviews?.toBuilder();
      _similar = _$v.similar?.toBuilder();
      _voteAverage = _$v.voteAverage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetailTvResult other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DetailTvResult;
  }

  @override
  void update(void Function(DetailTvResultBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DetailTvResult build() {
    _$DetailTvResult _$result;
    try {
      _$result = _$v ??
          new _$DetailTvResult._(
              backdropPath: backdropPath,
              createdBy: _createdBy?.build(),
              episodeRunTime: _episodeRunTime?.build(),
              firstAirDate: firstAirDate,
              genres: _genres?.build(),
              homepage: homepage,
              id: id,
              languages: _languages?.build(),
              lastAirDate: lastAirDate,
              lastEpisodeToAir: _lastEpisodeToAir?.build(),
              nextEpisodeToAir: _nextEpisodeToAir?.build(),
              name: name,
              networks: _networks?.build(),
              numberOfEpisodes: numberOfEpisodes,
              numberOfSeasons: numberOfSeasons,
              originCountry: _originCountry?.build(),
              originalLanguage: originalLanguage,
              originalName: originalName,
              overview: overview,
              productionCompanies: _productionCompanies?.build(),
              status: status,
              type: type,
              seasons: _seasons?.build(),
              images: _images?.build(),
              credits: _credits?.build(),
              videos: _videos?.build(),
              reviews: _reviews?.build(),
              similar: _similar?.build(),
              voteAverage: voteAverage);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'createdBy';
        _createdBy?.build();
        _$failedField = 'episodeRunTime';
        _episodeRunTime?.build();

        _$failedField = 'genres';
        _genres?.build();

        _$failedField = 'languages';
        _languages?.build();

        _$failedField = 'lastEpisodeToAir';
        _lastEpisodeToAir?.build();
        _$failedField = 'nextEpisodeToAir';
        _nextEpisodeToAir?.build();

        _$failedField = 'networks';
        _networks?.build();

        _$failedField = 'originCountry';
        _originCountry?.build();

        _$failedField = 'productionCompanies';
        _productionCompanies?.build();

        _$failedField = 'seasons';
        _seasons?.build();
        _$failedField = 'images';
        _images?.build();
        _$failedField = 'credits';
        _credits?.build();
        _$failedField = 'videos';
        _videos?.build();
        _$failedField = 'reviews';
        _reviews?.build();
        _$failedField = 'similar';
        _similar?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DetailTvResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
