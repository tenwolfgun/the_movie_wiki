import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/production_companies/production_companies.dart';

part 'production_companies_model.freezed.dart';
part 'production_companies_model.g.dart';

@freezed
abstract class ProductionCompaniesModel with _$ProductionCompaniesModel {
  const factory ProductionCompaniesModel({
    @nullable @required int id,
    @JsonKey(name: 'logo_path') @nullable @required String logoPath,
    @nullable @required String name,
    @JsonKey(name: 'origin_country') @nullable @required String originCountry,
  }) = _ProductionCompaniesModel;

  factory ProductionCompaniesModel.fromJson(Map<String, dynamic> json) =>
      _$ProductionCompaniesModelFromJson(json);
}

extension ProductionCompaniesModelX on ProductionCompaniesModel {
  ProductionCompanies toDomain() {
    return ProductionCompanies(
      id: id,
      logoPath: logoPath,
      name: name,
      originCountry: originCountry,
    );
  }
}
