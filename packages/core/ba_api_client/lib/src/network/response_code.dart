class ResponseCode {
  /// success with data
  static const int success = 200;

  /// success with no data (no content)
  static const int noContent = 201;

  /// failure, API rejected request
  static const int badRequest = 400;

  /// failure, user is not authorised
  static const int unnautorised = 401;

  /// failure, API rejected request
  static const int forbidden = 403;

  /// failure, crash in server side
  static const int internalServerError = 500;

  /// failure, not found
  static const int notFound = 404;

  /// local status code
  static const int connectionTimeout = -1;
  static const int cancel = -2;
  static const int receiveTimeout = -3;
  static const int sendTimeout = -4;
  static const int cacheError = -5;
  static const int noInternetConnection = -6;
  static const int defaultV = -7;
}
