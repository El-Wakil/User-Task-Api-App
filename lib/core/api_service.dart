import 'package:dio/dio.dart';

class ApiService {
  static const String _baseUrl = 'https://fakestoreapi.com';

  final Dio _dio;

  ApiService() : _dio = Dio() {
    _dio.options.baseUrl = _baseUrl;
    _dio.options.connectTimeout = const Duration(seconds: 10);
    _dio.options.receiveTimeout = const Duration(seconds: 10);
  }

  Future<Response> get(String endpoint) async {
    try {
      return await _dio.get(endpoint);
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }
}
