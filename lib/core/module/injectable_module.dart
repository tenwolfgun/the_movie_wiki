import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class InjectableModule {
  @lazySingleton
  DataConnectionChecker get connectionChecker => DataConnectionChecker();
  @lazySingleton
  Dio get dio => dioClient();
}

Dio dioClient() {
  final _options = BaseOptions(
    baseUrl: "https://api.themoviedb.org/3/movie/",
  );
  return Dio(_options);
}
