import 'package:dio/dio.dart';
import 'package:flutter_di_things/core/helper/api_helper.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../models/users.dart';
import 'abstract_services/users_service.dart';

part 'user_get_service.g.dart';

@RestApi()
@Injectable(as: UsersService)
abstract class ApiGetService implements UsersService {
  @factoryMethod
  factory ApiGetService(Dio dio, AppHelper appHelper) =>
      _ApiGetService(dio, baseUrl: appHelper.apiUrl);

  @override
  @GET('/user')
  Future<List<User>> getUsers();

  @override
  @GET('/user/{id}')
  Future<User> getUser(@Path('id') int id);
}
