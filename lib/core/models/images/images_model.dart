import 'package:freezed_annotation/freezed_annotation.dart';

import '../../entities/images/backdrops.dart';
import '../../entities/images/images.dart';
import '../../entities/images/posters.dart';

part 'images_model.freezed.dart';
part 'images_model.g.dart';

@freezed
abstract class ImagesModel with _$ImagesModel {
  const factory ImagesModel({
    @nullable @required List<BackdropsModel> backdrops,
    @nullable @required List<PostersModel> posters,
  }) = _ImagesModel;

  factory ImagesModel.fromJson(Map<String, dynamic> json) =>
      _$ImagesModelFromJson(json);
}

extension ImagesModelX on ImagesModel {
  Images toImages() {
    return Images(
      backdrops: backdrops.map((e) => e.toBackdrops()).toList(),
      posters: posters.map((e) => e.toPosters()).toList(),
    );
  }
}

@freezed
abstract class BackdropsModel with _$BackdropsModel {
  const factory BackdropsModel({
    @JsonKey(name: 'file_path') @nullable @required String filePath,
    @nullable @required double height,
    @nullable @required double width,
  }) = _BackdropsModel;

  factory BackdropsModel.fromJson(Map<String, dynamic> json) =>
      _$BackdropsModelFromJson(json);
}

extension BackdropsModelX on BackdropsModel {
  Backdrops toBackdrops() {
    return Backdrops(
      filePath: filePath,
      height: height,
      width: width,
    );
  }
}

@freezed
abstract class PostersModel with _$PostersModel {
  const factory PostersModel({
    @JsonKey(name: 'file_path') @nullable @required String filePath,
    @nullable @required double height,
    @nullable @required double width,
  }) = _PostersModel;

  factory PostersModel.fromJson(Map<String, dynamic> json) =>
      _$PostersModelFromJson(json);
}

extension PostersModelX on PostersModel {
  Posters toPosters() {
    return Posters(
      filePath: filePath,
      height: height,
      width: width,
    );
  }
}
