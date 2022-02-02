import 'package:dio/dio.dart';
import 'package:dio_flutter_transformer2/dio_flutter_transformer2.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class HttpClient {
  HttpClient({required String baseUrl})
      : _dio = Dio()
          ..transformer = FlutterTransformer()
          ..options = BaseOptions(
            baseUrl: baseUrl,
            receiveTimeout: _timeoutInMillisecond,
            connectTimeout: _timeoutInMillisecond,
            sendTimeout: _timeoutInMillisecond,
            contentType: 'json',
          )
          ..interceptors.add(PrettyDioLogger(
              requestHeader: true,
              error: true,
              maxWidth: 500,
              responseHeader: true));
  static const _timeoutInMillisecond = 30000;
  final Dio _dio;

  Dio get dio => _dio;
}
