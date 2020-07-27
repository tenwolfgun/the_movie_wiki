import 'package:freezed_annotation/freezed_annotation.dart';

part 'production_countries.freezed.dart';

@freezed
abstract class ProductionCountries with _$ProductionCountries {
  const factory ProductionCountries({
    @nullable @required String isoCountry,
    @nullable @required String name,
  }) = _ProductionCountries;
}
