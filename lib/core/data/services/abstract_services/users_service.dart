import '../../models/users.dart';

abstract class UsersService {
  Future<List<User>> getPosts();
  Future<User> getPost(int id);
}
