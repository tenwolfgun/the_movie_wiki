import 'package:freezed_annotation/freezed_annotation.dart';

part 'production_companies.freezed.dart';

@freezed
abstract class ProductionCompanies with _$ProductionCompanies {
  const factory ProductionCompanies({
    @nullable @required int id,
    @nullable @required String logoPath,
    @nullable @required String name,
    @nullable @required String originCountry,
  }) = _ProductionCompanies;
}
