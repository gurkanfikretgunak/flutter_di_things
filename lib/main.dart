import 'package:flutter/material.dart';
import 'core/app.dart';
import 'core/configs/config_di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDepends();
  runApp(const App());
}
