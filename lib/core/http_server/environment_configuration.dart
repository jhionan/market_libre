abstract class EnvironmentConfiguration {
  static final String prodUrl = String.fromEnvironment(
    Environment.production.name,
    defaultValue: '',
  );
}

enum Environment { production }

extension on Environment {
  String get name => toString().split('.').last;
}
