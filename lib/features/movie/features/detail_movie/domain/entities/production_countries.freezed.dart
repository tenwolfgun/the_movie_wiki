// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'production_countries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ProductionCountriesTearOff {
  const _$ProductionCountriesTearOff();

// ignore: unused_element
  _ProductionCountries call(
      {@required @nullable String isoCountry,
      @required @nullable String name}) {
    return _ProductionCountries(
      isoCountry: isoCountry,
      name: name,
    );
  }
}

// ignore: unused_element
const $ProductionCountries = _$ProductionCountriesTearOff();

mixin _$ProductionCountries {
  @nullable
  String get isoCountry;
  @nullable
  String get name;

  $ProductionCountriesCopyWith<ProductionCountries> get copyWith;
}

abstract class $ProductionCountriesCopyWith<$Res> {
  factory $ProductionCountriesCopyWith(
          ProductionCountries value, $Res Function(ProductionCountries) then) =
      _$ProductionCountriesCopyWithImpl<$Res>;
  $Res call({@nullable String isoCountry, @nullable String name});
}

class _$ProductionCountriesCopyWithImpl<$Res>
    implements $ProductionCountriesCopyWith<$Res> {
  _$ProductionCountriesCopyWithImpl(this._value, this._then);

  final ProductionCountries _value;
  // ignore: unused_field
  final $Res Function(ProductionCountries) _then;

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

abstract class _$ProductionCountriesCopyWith<$Res>
    implements $ProductionCountriesCopyWith<$Res> {
  factory _$ProductionCountriesCopyWith(_ProductionCountries value,
          $Res Function(_ProductionCountries) then) =
      __$ProductionCountriesCopyWithImpl<$Res>;
  @override
  $Res call({@nullable String isoCountry, @nullable String name});
}

class __$ProductionCountriesCopyWithImpl<$Res>
    extends _$ProductionCountriesCopyWithImpl<$Res>
    implements _$ProductionCountriesCopyWith<$Res> {
  __$ProductionCountriesCopyWithImpl(
      _ProductionCountries _value, $Res Function(_ProductionCountries) _then)
      : super(_value, (v) => _then(v as _ProductionCountries));

  @override
  _ProductionCountries get _value => super._value as _ProductionCountries;

  @override
  $Res call({
    Object isoCountry = freezed,
    Object name = freezed,
  }) {
    return _then(_ProductionCountries(
      isoCountry:
          isoCountry == freezed ? _value.isoCountry : isoCountry as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

class _$_ProductionCountries implements _ProductionCountries {
  const _$_ProductionCountries(
      {@required @nullable this.isoCountry, @required @nullable this.name});

  @override
  @nullable
  final String isoCountry;
  @override
  @nullable
  final String name;

  @override
  String toString() {
    return 'ProductionCountries(isoCountry: $isoCountry, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductionCountries &&
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
  _$ProductionCountriesCopyWith<_ProductionCountries> get copyWith =>
      __$ProductionCountriesCopyWithImpl<_ProductionCountries>(
          this, _$identity);
}

abstract class _ProductionCountries implements ProductionCountries {
  const factory _ProductionCountries(
      {@required @nullable String isoCountry,
      @required @nullable String name}) = _$_ProductionCountries;

  @override
  @nullable
  String get isoCountry;
  @override
  @nullable
  String get name;
  @override
  _$ProductionCountriesCopyWith<_ProductionCountries> get copyWith;
}
