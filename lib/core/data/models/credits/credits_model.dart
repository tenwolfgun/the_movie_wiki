import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/credits/cast.dart';
import '../../../domain/entities/credits/credits.dart';

part 'credits_model.freezed.dart';
part 'credits_model.g.dart';

@freezed
abstract class CreditsModel with _$CreditsModel {
  const factory CreditsModel({
    @nullable @required List<CastModel> cast,
  }) = _CreditsModel;

  factory CreditsModel.fromJson(Map<String, dynamic> json) =>
      _$CreditsModelFromJson(json);
}

extension CreditsModelX on CreditsModel {
  Credits toDomain() {
    return Credits(cast: cast.map((e) => e.toDomain()).toList());
  }
}

@freezed
abstract class CastModel with _$CastModel {
  const factory CastModel({
    @nullable @required int id,
    @nullable @required String character,
    @nullable @required String name,
    @JsonKey(name: 'profile_path') @nullable @required String profilePath,
  }) = _CastModel;

  factory CastModel.fromJson(Map<String, dynamic> json) =>
      _$CastModelFromJson(json);
}

extension CastModelX on CastModel {
  Cast toDomain() {
    return Cast(
      id: id,
      character: character,
      name: name,
      profilePath: profilePath,
    );
  }
}
