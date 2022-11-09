import 'package:flutter_di_things/core/data/services/abstract_services/users_service.dart';
import 'package:get_it/get_it.dart';

class MainLogic {
  final _userService = GetIt.I.get<UsersService>();
}
