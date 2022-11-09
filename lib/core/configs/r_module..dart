//Packages 📦
import 'package:dio/dio.dart';
import 'package:flutter_di_things/core/data/api_client.dart';
import 'package:injectable/injectable.dart';
//Helpers 🛟
import '../helper/api_helper.dart';
import '../helper/raw_helper.dart';

@module
abstract class RegisterModule {
  @singleton
  Dio dio(AppHelper config) => Dio()..options.baseUrl = config.apiUrl;

  @singleton
  @preResolve
  Future<RawHelper> config() async {
    final map = await EnvHelper.load();
    return RawHelper.from(map);
  }
}
