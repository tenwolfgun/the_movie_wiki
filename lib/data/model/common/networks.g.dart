// GENERATED CODE - DO NOT MODIFY BY HAND

part of networks;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Networks> _$networksSerializer = new _$NetworksSerializer();

class _$NetworksSerializer implements StructuredSerializer<Networks> {
  @override
  final Iterable<Type> types = const [Networks, _$Networks];
  @override
  final String wireName = 'Networks';

  @override
  Iterable<Object> serialize(Serializers serializers, Networks object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(double)));
    }
    if (object.logoPath != null) {
      result
        ..add('logo_path')
        ..add(serializers.serialize(object.logoPath,
            specifiedType: const FullType(String)));
    }
    if (object.originCountry != null) {
      result
        ..add('origin_country')
        ..add(serializers.serialize(object.originCountry,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Networks deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NetworksBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'logo_path':
          result.logoPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'origin_country':
          result.originCountry = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Networks extends Networks {
  @override
  final String name;
  @override
  final double id;
  @override
  final String logoPath;
  @override
  final String originCountry;

  factory _$Networks([void Function(NetworksBuilder) updates]) =>
      (new NetworksBuilder()..update(updates)).build();

  _$Networks._({this.name, this.id, this.logoPath, this.originCountry})
      : super._();

  @override
  Networks rebuild(void Function(NetworksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NetworksBuilder toBuilder() => new NetworksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Networks &&
        name == other.name &&
        id == other.id &&
        logoPath == other.logoPath &&
        originCountry == other.originCountry;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), id.hashCode), logoPath.hashCode),
        originCountry.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Networks')
          ..add('name', name)
          ..add('id', id)
          ..add('logoPath', logoPath)
          ..add('originCountry', originCountry))
        .toString();
  }
}

class NetworksBuilder implements Builder<Networks, NetworksBuilder> {
  _$Networks _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  double _id;
  double get id => _$this._id;
  set id(double id) => _$this._id = id;

  String _logoPath;
  String get logoPath => _$this._logoPath;
  set logoPath(String logoPath) => _$this._logoPath = logoPath;

  String _originCountry;
  String get originCountry => _$this._originCountry;
  set originCountry(String originCountry) =>
      _$this._originCountry = originCountry;

  NetworksBuilder();

  NetworksBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _id = _$v.id;
      _logoPath = _$v.logoPath;
      _originCountry = _$v.originCountry;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Networks other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Networks;
  }

  @override
  void update(void Function(NetworksBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Networks build() {
    final _$result = _$v ??
        new _$Networks._(
            name: name,
            id: id,
            logoPath: logoPath,
            originCountry: originCountry);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
