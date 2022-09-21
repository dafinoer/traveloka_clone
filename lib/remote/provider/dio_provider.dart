import 'package:dio/dio.dart';

Dio dioProvider() {
  final baseOption = BaseOptions(
    baseUrl: '<BASE-URL>',
    connectTimeout: 10000,
    receiveTimeout: 5000,
    sendTimeout: 5000,
  );

  final dio = Dio(baseOption);
  return dio;
}
