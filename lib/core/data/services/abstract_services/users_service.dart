import '../../models/user.dart';

abstract class UsersService {
  Future<List<User>> getUsers();
  Future<User> getUser(int id);
}
