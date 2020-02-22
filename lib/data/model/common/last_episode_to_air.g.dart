// GENERATED CODE - DO NOT MODIFY BY HAND

part of last_episode_to_air;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LastEpisodeToAir> _$lastEpisodeToAirSerializer =
    new _$LastEpisodeToAirSerializer();

class _$LastEpisodeToAirSerializer
    implements StructuredSerializer<LastEpisodeToAir> {
  @override
  final Iterable<Type> types = const [LastEpisodeToAir, _$LastEpisodeToAir];
  @override
  final String wireName = 'LastEpisodeToAir';

  @override
  Iterable<Object> serialize(Serializers serializers, LastEpisodeToAir object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.airDate != null) {
      result
        ..add('air_date')
        ..add(serializers.serialize(object.airDate,
            specifiedType: const FullType(String)));
    }
    if (object.episodeNumber != null) {
      result
        ..add('episode_number')
        ..add(serializers.serialize(object.episodeNumber,
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
    if (object.seasonNumber != null) {
      result
        ..add('season_number')
        ..add(serializers.serialize(object.seasonNumber,
            specifiedType: const FullType(double)));
    }
    if (object.stillPath != null) {
      result
        ..add('still_path')
        ..add(serializers.serialize(object.stillPath,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  LastEpisodeToAir deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LastEpisodeToAirBuilder();

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
        case 'episode_number':
          result.episodeNumber = serializers.deserialize(value,
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
        case 'season_number':
          result.seasonNumber = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'still_path':
          result.stillPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LastEpisodeToAir extends LastEpisodeToAir {
  @override
  final String airDate;
  @override
  final double episodeNumber;
  @override
  final double id;
  @override
  final String name;
  @override
  final String overview;
  @override
  final double seasonNumber;
  @override
  final String stillPath;

  factory _$LastEpisodeToAir(
          [void Function(LastEpisodeToAirBuilder) updates]) =>
      (new LastEpisodeToAirBuilder()..update(updates)).build();

  _$LastEpisodeToAir._(
      {this.airDate,
      this.episodeNumber,
      this.id,
      this.name,
      this.overview,
      this.seasonNumber,
      this.stillPath})
      : super._();

  @override
  LastEpisodeToAir rebuild(void Function(LastEpisodeToAirBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LastEpisodeToAirBuilder toBuilder() =>
      new LastEpisodeToAirBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LastEpisodeToAir &&
        airDate == other.airDate &&
        episodeNumber == other.episodeNumber &&
        id == other.id &&
        name == other.name &&
        overview == other.overview &&
        seasonNumber == other.seasonNumber &&
        stillPath == other.stillPath;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, airDate.hashCode), episodeNumber.hashCode),
                        id.hashCode),
                    name.hashCode),
                overview.hashCode),
            seasonNumber.hashCode),
        stillPath.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LastEpisodeToAir')
          ..add('airDate', airDate)
          ..add('episodeNumber', episodeNumber)
          ..add('id', id)
          ..add('name', name)
          ..add('overview', overview)
          ..add('seasonNumber', seasonNumber)
          ..add('stillPath', stillPath))
        .toString();
  }
}

class LastEpisodeToAirBuilder
    implements Builder<LastEpisodeToAir, LastEpisodeToAirBuilder> {
  _$LastEpisodeToAir _$v;

  String _airDate;
  String get airDate => _$this._airDate;
  set airDate(String airDate) => _$this._airDate = airDate;

  double _episodeNumber;
  double get episodeNumber => _$this._episodeNumber;
  set episodeNumber(double episodeNumber) =>
      _$this._episodeNumber = episodeNumber;

  double _id;
  double get id => _$this._id;
  set id(double id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _overview;
  String get overview => _$this._overview;
  set overview(String overview) => _$this._overview = overview;

  double _seasonNumber;
  double get seasonNumber => _$this._seasonNumber;
  set seasonNumber(double seasonNumber) => _$this._seasonNumber = seasonNumber;

  String _stillPath;
  String get stillPath => _$this._stillPath;
  set stillPath(String stillPath) => _$this._stillPath = stillPath;

  LastEpisodeToAirBuilder();

  LastEpisodeToAirBuilder get _$this {
    if (_$v != null) {
      _airDate = _$v.airDate;
      _episodeNumber = _$v.episodeNumber;
      _id = _$v.id;
      _name = _$v.name;
      _overview = _$v.overview;
      _seasonNumber = _$v.seasonNumber;
      _stillPath = _$v.stillPath;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LastEpisodeToAir other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LastEpisodeToAir;
  }

  @override
  void update(void Function(LastEpisodeToAirBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LastEpisodeToAir build() {
    final _$result = _$v ??
        new _$LastEpisodeToAir._(
            airDate: airDate,
            episodeNumber: episodeNumber,
            id: id,
            name: name,
            overview: overview,
            seasonNumber: seasonNumber,
            stillPath: stillPath);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
