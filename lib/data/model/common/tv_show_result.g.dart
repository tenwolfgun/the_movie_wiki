// GENERATED CODE - DO NOT MODIFY BY HAND

part of tv_show_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TvShowResult> _$tvShowResultSerializer =
    new _$TvShowResultSerializer();

class _$TvShowResultSerializer implements StructuredSerializer<TvShowResult> {
  @override
  final Iterable<Type> types = const [TvShowResult, _$TvShowResult];
  @override
  final String wireName = 'TvShowResult';

  @override
  Iterable<Object> serialize(Serializers serializers, TvShowResult object,
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
            specifiedType: const FullType(int)));
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
    if (object.firstAirDate != null) {
      result
        ..add('first_air_date')
        ..add(serializers.serialize(object.firstAirDate,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  TvShowResult deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TvShowResultBuilder();

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
              specifiedType: const FullType(int)) as int;
          break;
        case 'poster_path':
          result.posterPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'backdrop_path':
          result.backdropPath = serializers.deserialize(value,
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
        case 'first_air_date':
          result.firstAirDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TvShowResult extends TvShowResult {
  @override
  final double popularity;
  @override
  final int id;
  @override
  final String posterPath;
  @override
  final String backdropPath;
  @override
  final String name;
  @override
  final double voteAverage;
  @override
  final String overview;
  @override
  final String firstAirDate;

  factory _$TvShowResult([void Function(TvShowResultBuilder) updates]) =>
      (new TvShowResultBuilder()..update(updates)).build();

  _$TvShowResult._(
      {this.popularity,
      this.id,
      this.posterPath,
      this.backdropPath,
      this.name,
      this.voteAverage,
      this.overview,
      this.firstAirDate})
      : super._();

  @override
  TvShowResult rebuild(void Function(TvShowResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TvShowResultBuilder toBuilder() => new TvShowResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TvShowResult &&
        popularity == other.popularity &&
        id == other.id &&
        posterPath == other.posterPath &&
        backdropPath == other.backdropPath &&
        name == other.name &&
        voteAverage == other.voteAverage &&
        overview == other.overview &&
        firstAirDate == other.firstAirDate;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, popularity.hashCode), id.hashCode),
                            posterPath.hashCode),
                        backdropPath.hashCode),
                    name.hashCode),
                voteAverage.hashCode),
            overview.hashCode),
        firstAirDate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TvShowResult')
          ..add('popularity', popularity)
          ..add('id', id)
          ..add('posterPath', posterPath)
          ..add('backdropPath', backdropPath)
          ..add('name', name)
          ..add('voteAverage', voteAverage)
          ..add('overview', overview)
          ..add('firstAirDate', firstAirDate))
        .toString();
  }
}

class TvShowResultBuilder
    implements Builder<TvShowResult, TvShowResultBuilder> {
  _$TvShowResult _$v;

  double _popularity;
  double get popularity => _$this._popularity;
  set popularity(double popularity) => _$this._popularity = popularity;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _posterPath;
  String get posterPath => _$this._posterPath;
  set posterPath(String posterPath) => _$this._posterPath = posterPath;

  String _backdropPath;
  String get backdropPath => _$this._backdropPath;
  set backdropPath(String backdropPath) => _$this._backdropPath = backdropPath;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  double _voteAverage;
  double get voteAverage => _$this._voteAverage;
  set voteAverage(double voteAverage) => _$this._voteAverage = voteAverage;

  String _overview;
  String get overview => _$this._overview;
  set overview(String overview) => _$this._overview = overview;

  String _firstAirDate;
  String get firstAirDate => _$this._firstAirDate;
  set firstAirDate(String firstAirDate) => _$this._firstAirDate = firstAirDate;

  TvShowResultBuilder();

  TvShowResultBuilder get _$this {
    if (_$v != null) {
      _popularity = _$v.popularity;
      _id = _$v.id;
      _posterPath = _$v.posterPath;
      _backdropPath = _$v.backdropPath;
      _name = _$v.name;
      _voteAverage = _$v.voteAverage;
      _overview = _$v.overview;
      _firstAirDate = _$v.firstAirDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TvShowResult other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TvShowResult;
  }

  @override
  void update(void Function(TvShowResultBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TvShowResult build() {
    final _$result = _$v ??
        new _$TvShowResult._(
            popularity: popularity,
            id: id,
            posterPath: posterPath,
            backdropPath: backdropPath,
            name: name,
            voteAverage: voteAverage,
            overview: overview,
            firstAirDate: firstAirDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
