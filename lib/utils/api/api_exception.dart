class ApiException {
  final String message;

  ApiException(this.message);

  @override
  String toString() {
    return 'Api Exception $message';
  }
}

class ServerException implements ApiException {
  final String message;

  ServerException(this.message);

  @override
  String toString() {
    return 'Server Error $message';
  }
}
