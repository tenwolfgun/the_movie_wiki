import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_movie_wiki/core/entities/credits/cast.dart';
import 'package:the_movie_wiki/core/entities/credits/credits.dart';

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
  Credits toCredits() {
    return Credits(cast: cast.map((e) => e.toCast()).toList());
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
  Cast toCast() {
    return Cast(
      id: id,
      character: character,
      name: name,
      profilePath: profilePath,
    );
  }
}
