import 'package:ba_api_client/src/exceptions/ba_error_handler.dart';
import 'package:dio/dio.dart';

abstract class BaApiClient {
  Future<Response<dynamic>> get({
    required String endPoint,
    Map<String, dynamic>? data,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? params,
  });

  Future<Response<dynamic>> post({
    required String endPoint,
    Map<String, dynamic>? data,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? params,
  });

  Future<Response<dynamic>> put({
    required Map<String, dynamic> data,
    required String endPoint,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? params,
  });

  Future<Response<dynamic>> delete({
    required String endPoint,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? params,
  });

  Future<Response<dynamic>> patch({
    required Map<String, dynamic> data,
    required String endPoint,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? params,
  });
}

/// {@template ba_api_client}
/// BaApiClient with GET, POST, PUT, DELETE
/// {@endtemplate}
class BaApiClientImpl implements BaApiClient {
  BaApiClientImpl(this._dio);
  final Dio _dio;

  @override
  Future<Response<dynamic>> get({
    required String endPoint,
    Map<String, dynamic>? data,
    Map<String, dynamic>? params,
    Map<String, dynamic>? headers,
  }) async {
    try {
      final baseUrl = _dio.options.baseUrl;
      final response = await _dio.get<dynamic>(
        '$baseUrl$endPoint',
        data: data,
        queryParameters: params,
        options: Options(headers: headers),
      );
      return response;
    } catch (error) {
      throw BaErrorHandler.handle(error).exception;
    }
  }

  @override
  Future<Response<dynamic>> post({
    required String endPoint,
    Map<String, dynamic>? data,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? params,
  }) async {
    try {
      final baseUrl = _dio.options.baseUrl;
      final response = await _dio.post<dynamic>(
        '$baseUrl$endPoint',
        data: data,
        queryParameters: params,
        options: Options(headers: headers),
      );
      return response;
    } catch (error) {
      throw BaErrorHandler.handle(error).exception;
    }
  }

  @override
  Future<Response<dynamic>> put({
    required Map<String, dynamic> data,
    required String endPoint,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? params,
  }) async {
    try {
      final baseUrl = _dio.options.baseUrl;
      final response = await _dio.put<dynamic>(
        '$baseUrl$endPoint',
        data: data,
        options: Options(headers: headers),
        queryParameters: params,
      );
      return response;
    } catch (error) {
      throw BaErrorHandler.handle(error).exception;
    }
  }

  @override
  Future<Response<dynamic>> delete({
    required String endPoint,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? params,
  }) async {
    try {
      final baseUrl = _dio.options.baseUrl;
      final response = await _dio.delete<dynamic>(
        '$baseUrl$endPoint',
        options: Options(headers: headers),
        queryParameters: params,
      );
      return response;
    } catch (error) {
      throw BaErrorHandler.handle(error).exception;
    }
  }

  @override
  Future<Response<dynamic>> patch({
    required Map<String, dynamic> data,
    required String endPoint,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? params,
  }) async {
    try {
      final baseUrl = _dio.options.baseUrl;
      final response = await _dio.delete<dynamic>(
        '$baseUrl$endPoint',
        data: data,
        options: Options(headers: headers),
        queryParameters: params,
      );
      return response;
    } catch (error) {
      throw BaErrorHandler.handle(error).exception;
    }
  }
}
