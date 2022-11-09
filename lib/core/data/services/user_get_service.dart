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
  factory ApiGetService(Dio dio, AppHelper appConfig) => _ApiGetService(dio,
      baseUrl: appConfig.apiUrl); // I can inject baseUrl here

  @override
  @GET('/posts')
  Future<List<User>> getPosts();

  @override
  @GET('/posts/{id}')
  Future<User> getPost(@Path('id') int id);
}
