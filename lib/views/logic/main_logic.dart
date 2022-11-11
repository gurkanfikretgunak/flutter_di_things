import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:rxdart/rxdart.dart';

import '../../core/data/models/user.dart';
import '../../core/data/services/abstract_services/users_service.dart';

class MainLogic {
  final _userService = GetIt.I.get<UsersService>();

  final _loading = BehaviorSubject<bool>.seeded(false);
  final _users = BehaviorSubject<List<User>>();
  final _user = BehaviorSubject<User>();

  Stream<bool> get loading => _loading.stream;
  Stream<List<User>> get users => _users.stream;
  Stream<User> get user => _user.stream;

  void getLoadUsers() async {
    try {
      _loading.add(true);
      final users = await _userService.getUsers();
      Logger().i(users);
      _users.add(users);
    } on DioError catch (e) {
      Logger().e(e);
    } finally {
      _loading.add(false);
    }
  }

  void getLoadUser() async {
    try {
      _loading.add(true);
      final user = await _userService.getUser(4);
      Logger().i(user);
      _user.add(user);
    } on DioError catch (e) {
      Logger().e(e);
    } finally {
      _loading.add(false);
    }
  }

  void dispose() {
    _users.close();
  }
}
