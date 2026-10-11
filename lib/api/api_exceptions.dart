class ApiException implements Exception {
  final String message;
  final int? statusCode;
  final bool retryable;

  const ApiException(this.message, {this.statusCode, this.retryable = false});

  @override
  String toString() =>
      statusCode == null ? message : '$message (HTTP $statusCode)';
}
