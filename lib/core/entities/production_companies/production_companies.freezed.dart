// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'production_companies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ProductionCompaniesTearOff {
  const _$ProductionCompaniesTearOff();

// ignore: unused_element
  _ProductionCompanies call(
      {@required @nullable int id,
      @required @nullable String logoPath,
      @required @nullable String name,
      @required @nullable String originCountry}) {
    return _ProductionCompanies(
      id: id,
      logoPath: logoPath,
      name: name,
      originCountry: originCountry,
    );
  }
}

// ignore: unused_element
const $ProductionCompanies = _$ProductionCompaniesTearOff();

mixin _$ProductionCompanies {
  @nullable
  int get id;
  @nullable
  String get logoPath;
  @nullable
  String get name;
  @nullable
  String get originCountry;

  $ProductionCompaniesCopyWith<ProductionCompanies> get copyWith;
}

abstract class $ProductionCompaniesCopyWith<$Res> {
  factory $ProductionCompaniesCopyWith(
          ProductionCompanies value, $Res Function(ProductionCompanies) then) =
      _$ProductionCompaniesCopyWithImpl<$Res>;
  $Res call(
      {@nullable int id,
      @nullable String logoPath,
      @nullable String name,
      @nullable String originCountry});
}

class _$ProductionCompaniesCopyWithImpl<$Res>
    implements $ProductionCompaniesCopyWith<$Res> {
  _$ProductionCompaniesCopyWithImpl(this._value, this._then);

  final ProductionCompanies _value;
  // ignore: unused_field
  final $Res Function(ProductionCompanies) _then;

  @override
  $Res call({
    Object id = freezed,
    Object logoPath = freezed,
    Object name = freezed,
    Object originCountry = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      logoPath: logoPath == freezed ? _value.logoPath : logoPath as String,
      name: name == freezed ? _value.name : name as String,
      originCountry: originCountry == freezed
          ? _value.originCountry
          : originCountry as String,
    ));
  }
}

abstract class _$ProductionCompaniesCopyWith<$Res>
    implements $ProductionCompaniesCopyWith<$Res> {
  factory _$ProductionCompaniesCopyWith(_ProductionCompanies value,
          $Res Function(_ProductionCompanies) then) =
      __$ProductionCompaniesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable int id,
      @nullable String logoPath,
      @nullable String name,
      @nullable String originCountry});
}

class __$ProductionCompaniesCopyWithImpl<$Res>
    extends _$ProductionCompaniesCopyWithImpl<$Res>
    implements _$ProductionCompaniesCopyWith<$Res> {
  __$ProductionCompaniesCopyWithImpl(
      _ProductionCompanies _value, $Res Function(_ProductionCompanies) _then)
      : super(_value, (v) => _then(v as _ProductionCompanies));

  @override
  _ProductionCompanies get _value => super._value as _ProductionCompanies;

  @override
  $Res call({
    Object id = freezed,
    Object logoPath = freezed,
    Object name = freezed,
    Object originCountry = freezed,
  }) {
    return _then(_ProductionCompanies(
      id: id == freezed ? _value.id : id as int,
      logoPath: logoPath == freezed ? _value.logoPath : logoPath as String,
      name: name == freezed ? _value.name : name as String,
      originCountry: originCountry == freezed
          ? _value.originCountry
          : originCountry as String,
    ));
  }
}

class _$_ProductionCompanies implements _ProductionCompanies {
  const _$_ProductionCompanies(
      {@required @nullable this.id,
      @required @nullable this.logoPath,
      @required @nullable this.name,
      @required @nullable this.originCountry});

  @override
  @nullable
  final int id;
  @override
  @nullable
  final String logoPath;
  @override
  @nullable
  final String name;
  @override
  @nullable
  final String originCountry;

  @override
  String toString() {
    return 'ProductionCompanies(id: $id, logoPath: $logoPath, name: $name, originCountry: $originCountry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductionCompanies &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.logoPath, logoPath) ||
                const DeepCollectionEquality()
                    .equals(other.logoPath, logoPath)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.originCountry, originCountry) ||
                const DeepCollectionEquality()
                    .equals(other.originCountry, originCountry)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(logoPath) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(originCountry);

  @override
  _$ProductionCompaniesCopyWith<_ProductionCompanies> get copyWith =>
      __$ProductionCompaniesCopyWithImpl<_ProductionCompanies>(
          this, _$identity);
}

abstract class _ProductionCompanies implements ProductionCompanies {
  const factory _ProductionCompanies(
      {@required @nullable int id,
      @required @nullable String logoPath,
      @required @nullable String name,
      @required @nullable String originCountry}) = _$_ProductionCompanies;

  @override
  @nullable
  int get id;
  @override
  @nullable
  String get logoPath;
  @override
  @nullable
  String get name;
  @override
  @nullable
  String get originCountry;
  @override
  _$ProductionCompaniesCopyWith<_ProductionCompanies> get copyWith;
}
