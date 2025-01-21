import 'package:ba_api_client/src/network/response_code.dart';
import 'package:ba_api_client/src/network/response_message.dart';
import 'package:equatable/equatable.dart';

const String logTag = '[ApiException]';

abstract class ApiException extends Equatable implements Exception {
  const ApiException({
    required this.responseCode,
    required this.userMessage,
    required this.logMessage,
  });

  final int responseCode;
  final String userMessage;
  final String logMessage;

  @override
  List<Object> get props => [responseCode, userMessage, logMessage];
}

class NetworkException extends ApiException {
  const NetworkException({
    super.responseCode = ResponseCode.noInternetConnection,
    super.userMessage = BaUserMessage.noInternetConnection,
    super.logMessage = BaLogMessage.noInternetConnection,
  });
}

class ConnectionTimeoutException extends ApiException {
  const ConnectionTimeoutException({
    super.responseCode = ResponseCode.connectionTimeout,
    super.userMessage = BaUserMessage.connectionTimeout,
    super.logMessage = BaLogMessage.connectionTimeout,
  });
}

class SendTimeoutException extends ApiException {
  const SendTimeoutException({
    super.responseCode = ResponseCode.sendTimeout,
    super.userMessage = BaUserMessage.sendTimeout,
    super.logMessage = BaLogMessage.sendTimeout,
  });
}

class ReceiveTimeoutException extends ApiException {
  const ReceiveTimeoutException({
    super.responseCode = ResponseCode.receiveTimeout,
    super.userMessage = BaUserMessage.receiveTimeout,
    super.logMessage = BaLogMessage.receiveTimeout,
  });
}

class CancelException extends ApiException {
  const CancelException({
    super.responseCode = ResponseCode.cancel,
    super.userMessage = BaUserMessage.cancel,
    super.logMessage = BaLogMessage.cancel,
  });
}

class BadResponseException extends ApiException {
  const BadResponseException({
    required super.responseCode,
    required super.userMessage,
    required super.logMessage,
  });
}

class DefaultException extends ApiException {
  const DefaultException({
    super.responseCode = ResponseCode.defaultV,
    super.userMessage = BaUserMessage.defaultV,
    super.logMessage = BaLogMessage.defaultV,
  });
}

class UnnautorisedException extends ApiException {
  const UnnautorisedException({
    super.responseCode = ResponseCode.unnautorised,
    super.userMessage = BaUserMessage.unnautorised,
    super.logMessage = BaLogMessage.unnautorised,
  });
}
