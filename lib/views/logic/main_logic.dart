import 'package:flutter_di_things/core/data/services/abstract_services/users_service.dart';
import 'package:get_it/get_it.dart';
import 'package:rxdart/rxdart.dart';

import '../../core/data/models/users.dart';

class MainLogic {
  final _userService = GetIt.I.get<UsersService>();

  final _loading = BehaviorSubject<bool>.seeded(false);
  final _users = BehaviorSubject<List<User>>();
  Stream<bool> get loading => _loading.stream;
  Stream<List<User>> get users => _users.stream;

  void getUsers() async {
    try {
      _loading.add(true);
      final users = await _userService.getUsers();
      _users.add(users);
    } finally {
      _loading.add(false);
    }
  }

  void dispose() {
    _users.close();
  }
}
