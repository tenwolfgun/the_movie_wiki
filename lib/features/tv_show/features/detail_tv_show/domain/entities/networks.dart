import 'package:freezed_annotation/freezed_annotation.dart';

part 'networks.freezed.dart';

@freezed
abstract class Networks with _$Networks {
  const factory Networks({
    @nullable @required String name,
    @nullable @required int id,
  }) = _Networks;
}
