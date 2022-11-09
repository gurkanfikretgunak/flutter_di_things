

import 'raw_helper.dart';

@singleton
class AppCo {
  final RawHelper _config;

  RawHelper(this._config);

  String get apiUrl => _config['BASE_URL']!;
}
