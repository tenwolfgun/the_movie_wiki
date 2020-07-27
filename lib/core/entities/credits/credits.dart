import 'package:freezed_annotation/freezed_annotation.dart';

import 'cast.dart';

part 'credits.freezed.dart';

@freezed
abstract class Credits with _$Credits {
  const factory Credits({
    @nullable @required List<Cast> cast,
  }) = _Credits;
}
