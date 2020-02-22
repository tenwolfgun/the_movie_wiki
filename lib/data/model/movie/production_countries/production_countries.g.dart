// GENERATED CODE - DO NOT MODIFY BY HAND

part of production_countries;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductionCountries> _$productionCountriesSerializer =
    new _$ProductionCountriesSerializer();

class _$ProductionCountriesSerializer
    implements StructuredSerializer<ProductionCountries> {
  @override
  final Iterable<Type> types = const [
    ProductionCountries,
    _$ProductionCountries
  ];
  @override
  final String wireName = 'ProductionCountries';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ProductionCountries object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.isoCountry != null) {
      result
        ..add('iso_3166_1')
        ..add(serializers.serialize(object.isoCountry,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ProductionCountries deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductionCountriesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'iso_3166_1':
          result.isoCountry = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ProductionCountries extends ProductionCountries {
  @override
  final String isoCountry;
  @override
  final String name;

  factory _$ProductionCountries(
          [void Function(ProductionCountriesBuilder) updates]) =>
      (new ProductionCountriesBuilder()..update(updates)).build();

  _$ProductionCountries._({this.isoCountry, this.name}) : super._();

  @override
  ProductionCountries rebuild(
          void Function(ProductionCountriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductionCountriesBuilder toBuilder() =>
      new ProductionCountriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductionCountries &&
        isoCountry == other.isoCountry &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, isoCountry.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductionCountries')
          ..add('isoCountry', isoCountry)
          ..add('name', name))
        .toString();
  }
}

class ProductionCountriesBuilder
    implements Builder<ProductionCountries, ProductionCountriesBuilder> {
  _$ProductionCountries _$v;

  String _isoCountry;
  String get isoCountry => _$this._isoCountry;
  set isoCountry(String isoCountry) => _$this._isoCountry = isoCountry;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ProductionCountriesBuilder();

  ProductionCountriesBuilder get _$this {
    if (_$v != null) {
      _isoCountry = _$v.isoCountry;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductionCountries other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProductionCountries;
  }

  @override
  void update(void Function(ProductionCountriesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductionCountries build() {
    final _$result =
        _$v ?? new _$ProductionCountries._(isoCountry: isoCountry, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
