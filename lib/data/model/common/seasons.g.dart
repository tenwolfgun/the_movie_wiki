// GENERATED CODE - DO NOT MODIFY BY HAND

part of seasons;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Seasons> _$seasonsSerializer = new _$SeasonsSerializer();

class _$SeasonsSerializer implements StructuredSerializer<Seasons> {
  @override
  final Iterable<Type> types = const [Seasons, _$Seasons];
  @override
  final String wireName = 'Seasons';

  @override
  Iterable<Object> serialize(Serializers serializers, Seasons object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.airDate != null) {
      result
        ..add('air_date')
        ..add(serializers.serialize(object.airDate,
            specifiedType: const FullType(String)));
    }
    if (object.episodeCount != null) {
      result
        ..add('episode_count')
        ..add(serializers.serialize(object.episodeCount,
            specifiedType: const FullType(double)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(double)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.overview != null) {
      result
        ..add('overview')
        ..add(serializers.serialize(object.overview,
            specifiedType: const FullType(String)));
    }
    if (object.posterPath != null) {
      result
        ..add('poster_path')
        ..add(serializers.serialize(object.posterPath,
            specifiedType: const FullType(String)));
    }
    if (object.seasonNumber != null) {
      result
        ..add('season_number')
        ..add(serializers.serialize(object.seasonNumber,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  Seasons deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SeasonsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'air_date':
          result.airDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'episode_count':
          result.episodeCount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'poster_path':
          result.posterPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'season_number':
          result.seasonNumber = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$Seasons extends Seasons {
  @override
  final String airDate;
  @override
  final double episodeCount;
  @override
  final double id;
  @override
  final String name;
  @override
  final String overview;
  @override
  final String posterPath;
  @override
  final double seasonNumber;

  factory _$Seasons([void Function(SeasonsBuilder) updates]) =>
      (new SeasonsBuilder()..update(updates)).build();

  _$Seasons._(
      {this.airDate,
      this.episodeCount,
      this.id,
      this.name,
      this.overview,
      this.posterPath,
      this.seasonNumber})
      : super._();

  @override
  Seasons rebuild(void Function(SeasonsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeasonsBuilder toBuilder() => new SeasonsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Seasons &&
        airDate == other.airDate &&
        episodeCount == other.episodeCount &&
        id == other.id &&
        name == other.name &&
        overview == other.overview &&
        posterPath == other.posterPath &&
        seasonNumber == other.seasonNumber;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, airDate.hashCode), episodeCount.hashCode),
                        id.hashCode),
                    name.hashCode),
                overview.hashCode),
            posterPath.hashCode),
        seasonNumber.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Seasons')
          ..add('airDate', airDate)
          ..add('episodeCount', episodeCount)
          ..add('id', id)
          ..add('name', name)
          ..add('overview', overview)
          ..add('posterPath', posterPath)
          ..add('seasonNumber', seasonNumber))
        .toString();
  }
}

class SeasonsBuilder implements Builder<Seasons, SeasonsBuilder> {
  _$Seasons _$v;

  String _airDate;
  String get airDate => _$this._airDate;
  set airDate(String airDate) => _$this._airDate = airDate;

  double _episodeCount;
  double get episodeCount => _$this._episodeCount;
  set episodeCount(double episodeCount) => _$this._episodeCount = episodeCount;

  double _id;
  double get id => _$this._id;
  set id(double id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _overview;
  String get overview => _$this._overview;
  set overview(String overview) => _$this._overview = overview;

  String _posterPath;
  String get posterPath => _$this._posterPath;
  set posterPath(String posterPath) => _$this._posterPath = posterPath;

  double _seasonNumber;
  double get seasonNumber => _$this._seasonNumber;
  set seasonNumber(double seasonNumber) => _$this._seasonNumber = seasonNumber;

  SeasonsBuilder();

  SeasonsBuilder get _$this {
    if (_$v != null) {
      _airDate = _$v.airDate;
      _episodeCount = _$v.episodeCount;
      _id = _$v.id;
      _name = _$v.name;
      _overview = _$v.overview;
      _posterPath = _$v.posterPath;
      _seasonNumber = _$v.seasonNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Seasons other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Seasons;
  }

  @override
  void update(void Function(SeasonsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Seasons build() {
    final _$result = _$v ??
        new _$Seasons._(
            airDate: airDate,
            episodeCount: episodeCount,
            id: id,
            name: name,
            overview: overview,
            posterPath: posterPath,
            seasonNumber: seasonNumber);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
