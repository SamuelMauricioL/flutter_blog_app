import 'package:ba_api_client/src/exceptions/ba_api_exception.dart';
import 'package:ba_api_client/src/network/response_code.dart';
import 'package:ba_api_client/src/network/response_message.dart';
import 'package:dio/dio.dart';

class BaErrorHandler implements Exception {
  BaErrorHandler.handle(dynamic error) {
    if (error is DioException) {
      /// dio error so its an error from response of the API or from dio itself
      exception = _handleError(error);
    } else {
      /// default error
      exception = const DefaultException();
    }
  }
  late Exception exception;
}

Exception _handleError(DioException error) {
  switch (error.type) {
    case DioExceptionType.connectionError:
      return const NetworkException();
    case DioExceptionType.connectionTimeout:
      return const ConnectionTimeoutException();
    case DioExceptionType.sendTimeout:
      return const SendTimeoutException();
    case DioExceptionType.receiveTimeout:
      return const ReceiveTimeoutException();
    case DioExceptionType.cancel:
      return const CancelException();
    case DioExceptionType.badResponse:
      return const BadResponseException(
        responseCode: ResponseCode.badRequest,
        userMessage: BaUserCopy.somethingWentWrong,
        logMessage: '$logTag [BadResponse]',
      );

    case DioExceptionType.badCertificate:
    case DioExceptionType.unknown:
      return const DefaultException();
  }
}
