import 'package:injectable/injectable.dart';

import 'raw_helper.dart';

@singleton
class AppHelper {
  final RawHelper _config;

  AppHelper(this._config);

  String get apiUrl => _config['BASE_URL']!;
}
