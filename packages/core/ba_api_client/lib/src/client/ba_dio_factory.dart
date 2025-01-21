import 'package:ba_api_client/src/client/ba_dio_headers.dart';
import 'package:ba_api_client/src/interceptor/ba_custom_interceptor.dart';
import 'package:ba_api_client/src/interceptor/ba_logging_interceptor.dart';
import 'package:dio/dio.dart';

const Duration timeout = Duration(seconds: 15);

class BaDioFactory {
  BaDioFactory({
    required this.baseUrl,
    required this.isDevMode,
    this.headers = const {},
    this.interceptors = const [],
  });
  final String baseUrl;
  final bool isDevMode;
  final Map<String, String> headers;
  final List<BaCustomInterceptor> interceptors;

  Future<Dio> getDio() async {
    final dio = Dio();
    final baseHeaders = BaDioHeaders.baseParams().toMap()..addAll(headers);
    dio.options = BaseOptions(
      baseUrl: baseUrl,
      headers: baseHeaders,
      receiveTimeout: timeout,
      connectTimeout: timeout,
    );

    if (isDevMode) {
      dio.interceptors.add(baLoggingInterceptor);
    }

    for (final interceptor in interceptors) {
      dio.interceptors.add(interceptor.getInterceptor(dio));
    }

    return dio;
  }
}
