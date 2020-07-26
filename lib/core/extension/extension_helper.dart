import 'package:intl/intl.dart';

import '../error/failure.dart';

extension FailureX on Failure {
  String toErrorMessage() {
    if (this is ServerError) {
      return 'Unable to retrieve data from server.';
    } else if (this is Unexpected) {
      return 'Unexpected Error';
    } else if (this is EmptyResult) {
      return 'No result found.';
    } else if (this is NoInternetConnection) {
      return 'Unable to process your request, please check your network connection.';
    } else {
      return 'Unexpected Error';
    }
  }
}

extension Stringx on String {
  String toDate() {
    return this == null
        ? '-'
        : DateFormat.yMMMd().format(DateTime.parse(this.replaceAll('-', '')));
  }
}
