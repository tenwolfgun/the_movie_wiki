// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'production_companies_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ProductionCompaniesModel _$ProductionCompaniesModelFromJson(
    Map<String, dynamic> json) {
  return _ProductionCompaniesModel.fromJson(json);
}

class _$ProductionCompaniesModelTearOff {
  const _$ProductionCompaniesModelTearOff();

// ignore: unused_element
  _ProductionCompaniesModel call(
      {@required
      @nullable
          int id,
      @required
      @JsonKey(name: 'logo_path')
      @nullable
          String logoPath,
      @required
      @nullable
          String name,
      @required
      @JsonKey(name: 'origin_country')
      @nullable
          String originCountry}) {
    return _ProductionCompaniesModel(
      id: id,
      logoPath: logoPath,
      name: name,
      originCountry: originCountry,
    );
  }
}

// ignore: unused_element
const $ProductionCompaniesModel = _$ProductionCompaniesModelTearOff();

mixin _$ProductionCompaniesModel {
  @nullable
  int get id;
  @JsonKey(name: 'logo_path')
  @nullable
  String get logoPath;
  @nullable
  String get name;
  @JsonKey(name: 'origin_country')
  @nullable
  String get originCountry;

  Map<String, dynamic> toJson();
  $ProductionCompaniesModelCopyWith<ProductionCompaniesModel> get copyWith;
}

abstract class $ProductionCompaniesModelCopyWith<$Res> {
  factory $ProductionCompaniesModelCopyWith(ProductionCompaniesModel value,
          $Res Function(ProductionCompaniesModel) then) =
      _$ProductionCompaniesModelCopyWithImpl<$Res>;
  $Res call(
      {@nullable int id,
      @JsonKey(name: 'logo_path') @nullable String logoPath,
      @nullable String name,
      @JsonKey(name: 'origin_country') @nullable String originCountry});
}

class _$ProductionCompaniesModelCopyWithImpl<$Res>
    implements $ProductionCompaniesModelCopyWith<$Res> {
  _$ProductionCompaniesModelCopyWithImpl(this._value, this._then);

  final ProductionCompaniesModel _value;
  // ignore: unused_field
  final $Res Function(ProductionCompaniesModel) _then;

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

abstract class _$ProductionCompaniesModelCopyWith<$Res>
    implements $ProductionCompaniesModelCopyWith<$Res> {
  factory _$ProductionCompaniesModelCopyWith(_ProductionCompaniesModel value,
          $Res Function(_ProductionCompaniesModel) then) =
      __$ProductionCompaniesModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable int id,
      @JsonKey(name: 'logo_path') @nullable String logoPath,
      @nullable String name,
      @JsonKey(name: 'origin_country') @nullable String originCountry});
}

class __$ProductionCompaniesModelCopyWithImpl<$Res>
    extends _$ProductionCompaniesModelCopyWithImpl<$Res>
    implements _$ProductionCompaniesModelCopyWith<$Res> {
  __$ProductionCompaniesModelCopyWithImpl(_ProductionCompaniesModel _value,
      $Res Function(_ProductionCompaniesModel) _then)
      : super(_value, (v) => _then(v as _ProductionCompaniesModel));

  @override
  _ProductionCompaniesModel get _value =>
      super._value as _ProductionCompaniesModel;

  @override
  $Res call({
    Object id = freezed,
    Object logoPath = freezed,
    Object name = freezed,
    Object originCountry = freezed,
  }) {
    return _then(_ProductionCompaniesModel(
      id: id == freezed ? _value.id : id as int,
      logoPath: logoPath == freezed ? _value.logoPath : logoPath as String,
      name: name == freezed ? _value.name : name as String,
      originCountry: originCountry == freezed
          ? _value.originCountry
          : originCountry as String,
    ));
  }
}

@JsonSerializable()
class _$_ProductionCompaniesModel implements _ProductionCompaniesModel {
  const _$_ProductionCompaniesModel(
      {@required @nullable this.id,
      @required @JsonKey(name: 'logo_path') @nullable this.logoPath,
      @required @nullable this.name,
      @required @JsonKey(name: 'origin_country') @nullable this.originCountry});

  factory _$_ProductionCompaniesModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductionCompaniesModelFromJson(json);

  @override
  @nullable
  final int id;
  @override
  @JsonKey(name: 'logo_path')
  @nullable
  final String logoPath;
  @override
  @nullable
  final String name;
  @override
  @JsonKey(name: 'origin_country')
  @nullable
  final String originCountry;

  @override
  String toString() {
    return 'ProductionCompaniesModel(id: $id, logoPath: $logoPath, name: $name, originCountry: $originCountry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductionCompaniesModel &&
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
  _$ProductionCompaniesModelCopyWith<_ProductionCompaniesModel> get copyWith =>
      __$ProductionCompaniesModelCopyWithImpl<_ProductionCompaniesModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductionCompaniesModelToJson(this);
  }
}

abstract class _ProductionCompaniesModel implements ProductionCompaniesModel {
  const factory _ProductionCompaniesModel(
      {@required
      @nullable
          int id,
      @required
      @JsonKey(name: 'logo_path')
      @nullable
          String logoPath,
      @required
      @nullable
          String name,
      @required
      @JsonKey(name: 'origin_country')
      @nullable
          String originCountry}) = _$_ProductionCompaniesModel;

  factory _ProductionCompaniesModel.fromJson(Map<String, dynamic> json) =
      _$_ProductionCompaniesModel.fromJson;

  @override
  @nullable
  int get id;
  @override
  @JsonKey(name: 'logo_path')
  @nullable
  String get logoPath;
  @override
  @nullable
  String get name;
  @override
  @JsonKey(name: 'origin_country')
  @nullable
  String get originCountry;
  @override
  _$ProductionCompaniesModelCopyWith<_ProductionCompaniesModel> get copyWith;
}
