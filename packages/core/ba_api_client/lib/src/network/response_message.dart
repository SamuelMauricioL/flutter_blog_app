import 'package:ba_api_client/src/exceptions/ba_api_exception.dart';

class BaUserMessage {
  /// success with data
  static const String success = 'success';

  /// success with no data (no content)
  static const String noContent = BaUserCopy.noContent;

  /// failure, API rejected request
  static const String badRequest = BaUserCopy.somethingWentWrong;

  /// failure, user is not authorised
  static const String unnautorised = BaUserCopy.unnautorised;

  /// failure, API rejected request
  static const String forbidden = BaUserCopy.somethingWentWrong;

  /// failure, crash in server side
  static const String internalServerError = BaUserCopy.somethingWentWrong;

  /// failure, crash in server side
  static const String notFound = BaUserCopy.notFound;

  /// local status

  /// local status code - connectionTimeout
  static const String connectionTimeout = BaUserCopy.somethingWentWrong;

  /// local status code - cancel
  static const String cancel = BaUserCopy.cancel;

  /// local status code - receiveTimeout
  static const String receiveTimeout = BaUserCopy.somethingWentWrong;

  /// local status code - sendTimeout
  static const String sendTimeout = BaUserCopy.somethingWentWrong;

  /// local status code - cacheError
  static const String cacheError = BaUserCopy.somethingWentWrong;

  /// local status code - noInternetConnection
  static const String noInternetConnection = BaUserCopy.noInternetConnection;

  /// local status code - defaultV
  static const String defaultV = BaUserCopy.somethingWentWrong;
}

class BaUserCopy {
  static const String noContent = 'Nada que mostrar';
  static const String somethingWentWrong =
      'Se produjo un error, inténtalo de nuevo.';
  static const String unnautorised = 'Necesita autenticarse nuevamente.';
  static const String notFound =
      'No se encontró el contenido, inténtalo de nuevo.';
  static const String cancel = 'Algo salió mal, inténtalo de nuevo más tarde.';
  static const String noInternetConnection =
      'Por favor revise su conexion a internet';
}

class BaLogMessage {
  /// success with data
  static const String success = 'success';

  /// success with no data (no content)
  static const String noContent =
      '$logTag [noContent] success with not content';

  /// failure, API rejected request
  static const String badRequest =
      '$logTag [badRequest] bad request. try again later';

  /// failure, user is not authorised
  static const String unnautorised =
      '$logTag [unnautorised] user unauthorized, try again later';

  /// failure, API rejected request
  static const String forbidden =
      '$logTag [forbidden] forbidden request. try again later';

  /// failure, crash in server side
  static const String internalServerError =
      '$logTag [internalServerError] some thing went wrong, try again later';

  /// failure, crash in server side
  static const String notFound =
      '$logTag [notFound] url not found, try again later';

  /// local status

  /// local status code - connectionTimeout
  static const String connectionTimeout =
      '$logTag [connectionTimeout] time out, try again late';

  /// local status code - cancel
  static const String cancel =
      '$logTag [cancel] some thing went wrong, try again later';

  /// local status code - receiveTimeout
  static const String receiveTimeout =
      '$logTag [receiveTimeout] time out, try again late';

  /// local status code - sendTimeout
  static const String sendTimeout =
      '$logTag [sendTimeout] time out, try again late';

  /// local status code - cacheError
  static const String cacheError =
      '$logTag [cacheError] cache error, try again later';

  /// local status code - noInternetConnection
  static const String noInternetConnection =
      '$logTag [noInternetConnection] Please check your internet connection';

  /// local status code - defaultV
  static const String defaultV =
      '$logTag [defaultV] some thing went wrong, try again later';
}
