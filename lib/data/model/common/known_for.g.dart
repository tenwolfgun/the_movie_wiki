// GENERATED CODE - DO NOT MODIFY BY HAND

part of known_for;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<KnownFor> _$knownForSerializer = new _$KnownForSerializer();

class _$KnownForSerializer implements StructuredSerializer<KnownFor> {
  @override
  final Iterable<Type> types = const [KnownFor, _$KnownFor];
  @override
  final String wireName = 'KnownFor';

  @override
  Iterable<Object> serialize(Serializers serializers, KnownFor object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.popularity != null) {
      result
        ..add('popularity')
        ..add(serializers.serialize(object.popularity,
            specifiedType: const FullType(double)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(double)));
    }
    if (object.posterPath != null) {
      result
        ..add('poster_path')
        ..add(serializers.serialize(object.posterPath,
            specifiedType: const FullType(String)));
    }
    if (object.backdropPath != null) {
      result
        ..add('backdrop_path')
        ..add(serializers.serialize(object.backdropPath,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.voteAverage != null) {
      result
        ..add('vote_average')
        ..add(serializers.serialize(object.voteAverage,
            specifiedType: const FullType(double)));
    }
    if (object.overview != null) {
      result
        ..add('overview')
        ..add(serializers.serialize(object.overview,
            specifiedType: const FullType(String)));
    }
    if (object.releaseDate != null) {
      result
        ..add('release_date')
        ..add(serializers.serialize(object.releaseDate,
            specifiedType: const FullType(String)));
    }
    if (object.firstAirDate != null) {
      result
        ..add('first_air_date')
        ..add(serializers.serialize(object.firstAirDate,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  KnownFor deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new KnownForBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'poster_path':
          result.posterPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'backdrop_path':
          result.backdropPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vote_average':
          result.voteAverage = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'release_date':
          result.releaseDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'first_air_date':
          result.firstAirDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$KnownFor extends KnownFor {
  @override
  final double popularity;
  @override
  final double id;
  @override
  final String posterPath;
  @override
  final String backdropPath;
  @override
  final String title;
  @override
  final String name;
  @override
  final double voteAverage;
  @override
  final String overview;
  @override
  final String releaseDate;
  @override
  final String firstAirDate;

  factory _$KnownFor([void Function(KnownForBuilder) updates]) =>
      (new KnownForBuilder()..update(updates)).build();

  _$KnownFor._(
      {this.popularity,
      this.id,
      this.posterPath,
      this.backdropPath,
      this.title,
      this.name,
      this.voteAverage,
      this.overview,
      this.releaseDate,
      this.firstAirDate})
      : super._();

  @override
  KnownFor rebuild(void Function(KnownForBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KnownForBuilder toBuilder() => new KnownForBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KnownFor &&
        popularity == other.popularity &&
        id == other.id &&
        posterPath == other.posterPath &&
        backdropPath == other.backdropPath &&
        title == other.title &&
        name == other.name &&
        voteAverage == other.voteAverage &&
        overview == other.overview &&
        releaseDate == other.releaseDate &&
        firstAirDate == other.firstAirDate;
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
                                    $jc($jc(0, popularity.hashCode),
                                        id.hashCode),
                                    posterPath.hashCode),
                                backdropPath.hashCode),
                            title.hashCode),
                        name.hashCode),
                    voteAverage.hashCode),
                overview.hashCode),
            releaseDate.hashCode),
        firstAirDate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('KnownFor')
          ..add('popularity', popularity)
          ..add('id', id)
          ..add('posterPath', posterPath)
          ..add('backdropPath', backdropPath)
          ..add('title', title)
          ..add('name', name)
          ..add('voteAverage', voteAverage)
          ..add('overview', overview)
          ..add('releaseDate', releaseDate)
          ..add('firstAirDate', firstAirDate))
        .toString();
  }
}

class KnownForBuilder implements Builder<KnownFor, KnownForBuilder> {
  _$KnownFor _$v;

  double _popularity;
  double get popularity => _$this._popularity;
  set popularity(double popularity) => _$this._popularity = popularity;

  double _id;
  double get id => _$this._id;
  set id(double id) => _$this._id = id;

  String _posterPath;
  String get posterPath => _$this._posterPath;
  set posterPath(String posterPath) => _$this._posterPath = posterPath;

  String _backdropPath;
  String get backdropPath => _$this._backdropPath;
  set backdropPath(String backdropPath) => _$this._backdropPath = backdropPath;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  double _voteAverage;
  double get voteAverage => _$this._voteAverage;
  set voteAverage(double voteAverage) => _$this._voteAverage = voteAverage;

  String _overview;
  String get overview => _$this._overview;
  set overview(String overview) => _$this._overview = overview;

  String _releaseDate;
  String get releaseDate => _$this._releaseDate;
  set releaseDate(String releaseDate) => _$this._releaseDate = releaseDate;

  String _firstAirDate;
  String get firstAirDate => _$this._firstAirDate;
  set firstAirDate(String firstAirDate) => _$this._firstAirDate = firstAirDate;

  KnownForBuilder();

  KnownForBuilder get _$this {
    if (_$v != null) {
      _popularity = _$v.popularity;
      _id = _$v.id;
      _posterPath = _$v.posterPath;
      _backdropPath = _$v.backdropPath;
      _title = _$v.title;
      _name = _$v.name;
      _voteAverage = _$v.voteAverage;
      _overview = _$v.overview;
      _releaseDate = _$v.releaseDate;
      _firstAirDate = _$v.firstAirDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KnownFor other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$KnownFor;
  }

  @override
  void update(void Function(KnownForBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$KnownFor build() {
    final _$result = _$v ??
        new _$KnownFor._(
            popularity: popularity,
            id: id,
            posterPath: posterPath,
            backdropPath: backdropPath,
            title: title,
            name: name,
            voteAverage: voteAverage,
            overview: overview,
            releaseDate: releaseDate,
            firstAirDate: firstAirDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
