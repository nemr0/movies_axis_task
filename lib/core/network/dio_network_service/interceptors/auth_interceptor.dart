import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor{
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final apiToken = String.fromEnvironment('API_TOKEN');
    options = options.copyWith(
      headers: {
        ...options.headers,
        'Authorization' : 'Bearer $apiToken',
      },
    );
    super.onRequest(options, handler);
  }
}