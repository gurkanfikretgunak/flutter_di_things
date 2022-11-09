class RawHelper {
  final Map<String, String> _config;

  RawHelper.from(this._config);

  String? operator [](String key) => _config[key];
}
