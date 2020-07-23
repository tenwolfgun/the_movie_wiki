import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  const factory Failure.noInternetConnection() = NoInternetConnection;
  const factory Failure.serverError() = ServerError;
  const factory Failure.emptyResult() = EmptyResult;
  const factory Failure.unexpected() = Unexpected;
}
