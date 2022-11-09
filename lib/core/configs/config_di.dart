import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'config_di.config.dart';

final getIt = GetIt.instance;

@InjectableInit(preferRelativeImports: false)
Future<void> configureDependencies() => $initGetIt(getIt);
