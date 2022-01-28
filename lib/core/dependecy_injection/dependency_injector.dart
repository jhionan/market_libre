import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:market_libre/core/http_server/environment_configuration.dart';
import 'package:market_libre/core/http_server/http_client.dart';

abstract class DependencyInjection {
  DependencyInjection._();

  static final Provider httpClient = Provider((ref) {
    return HttpClient(baseUrl: EnvironmentConfiguration.prodUrl);
  });
}
