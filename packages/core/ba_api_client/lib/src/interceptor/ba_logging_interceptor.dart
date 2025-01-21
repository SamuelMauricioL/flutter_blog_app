import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final baLoggingInterceptor = PrettyDioLogger(
  requestHeader: true,
  requestBody: true,
  responseHeader: true,
  responseBody: false,
);
