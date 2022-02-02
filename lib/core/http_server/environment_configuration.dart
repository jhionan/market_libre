abstract class EnvironmentConfiguration {
  static final String prodUrl = String.fromEnvironment(
    Environment.production.name,
    defaultValue: 'https://api.mercadolibre.com/',
  );
}

enum Environment { production }

extension on Environment {
  String get name => toString().split('.').last.toUpperCase();
}
