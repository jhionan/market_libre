import 'package:dio/dio.dart';

class HttpClient {
  static final _timeoutInMillisecond = 30000;
  final Dio _dio;
  HttpClient({required String baseUrl})
      : _dio = Dio(BaseOptions(
            baseUrl: baseUrl,
            receiveTimeout: _timeoutInMillisecond,
            connectTimeout: _timeoutInMillisecond,
            sendTimeout: _timeoutInMillisecond,
            responseType: ResponseType.stream));

 
}
