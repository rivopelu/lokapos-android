// lib/core/services/http_service.dart
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:lokapos/constans/endpoint.dart';

class HttpService {
  static final HttpService _instance = HttpService._internal();
  factory HttpService() => _instance;
  HttpService._internal();

  final Dio _dio = Dio();
  final storage = const FlutterSecureStorage();

  Future<void> init() async {
    _dio.options.baseUrl = ApiConstants.baseUrl;
    _dio.options.connectTimeout = const Duration(seconds: 30);
    _dio.options.receiveTimeout = const Duration(seconds: 30);

    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await storage.read(key: 'token');
          if (token != null) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          return handler.next(options);
        },
      ),
    );
  }

  Future<Response<T>> post<T>(
      String endpoint, {
        dynamic data,
        Map<String, dynamic>? queryParameters,
      }) async {
    try {
      print("FETC");

      final response = await _dio.post<T>(
        endpoint,
        data: data,
        queryParameters: queryParameters,
      );
      print("RESPONSE $response");
      print(response.statusCode);
      return response;
    } on DioException catch (e) {
      print(e);
      throw _handleError(e);
    }
  }

  Exception _handleError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const TimeoutException();
      case DioExceptionType.badResponse:
        return ApiException(
          error.response?.statusCode ?? 500,
          error.response?.data?['message'] ?? 'Unknown error',
        );
      default:
        return const NetworkException();
    }
  }
}

class TimeoutException implements Exception {
  final String message;
  const TimeoutException([this.message = 'Connection timeout']);
}

class NetworkException implements Exception {
  final String message;
  const NetworkException([this.message = 'No internet connection']);
}

class ApiException implements Exception {
  final int statusCode;
  final String message;
  const ApiException(this.statusCode, this.message);
}