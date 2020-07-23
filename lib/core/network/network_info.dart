import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

@LazySingleton(as: NetworkInfo)
class NetworkInfoImpl implements NetworkInfo {
  final DataConnectionChecker connectionChecker;

  const NetworkInfoImpl({@required this.connectionChecker});

  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}
