import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart' as rf;

import '../models/user.dart';
import 'abstract_services/users_service.dart';
import 'package:dio/dio.dart';

part 'user_get_service.g.dart';

@rf.RestApi()
@Injectable(as: UsersService)
abstract class RestUsersService implements UsersService {
  @factoryMethod
  factory RestUsersService(Dio dio) => _RestUsersService(dio);

  @override
  @rf.GET('/users')
  @rf.Headers({"Content-Type": "application/json"})
  Future<List<User>> getUsers();

  @override
  @rf.GET('/users/{id}')
  Future<User> getUser(@rf.Path('id') int id);
}
