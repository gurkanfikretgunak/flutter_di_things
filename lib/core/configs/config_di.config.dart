// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:flutter_di_things/core/configs/r_module..dart' as _i8;
import 'package:flutter_di_things/core/data/services/abstract_services/users_service.dart'
    as _i6;
import 'package:flutter_di_things/core/data/services/user_get_service.dart'
    as _i7;
import 'package:flutter_di_things/core/helper/api_helper.dart' as _i4;
import 'package:flutter_di_things/core/helper/raw_helper.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart'
    as _i2; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  await gh.singletonAsync<_i3.RawHelper>(
    () => registerModule.config(),
    preResolve: true,
  );
  gh.singleton<_i4.AppHelper>(_i4.AppHelper(get<_i3.RawHelper>()));
  gh.singleton<_i5.Dio>(registerModule.dio(get<_i4.AppHelper>()));
  gh.factory<_i6.UsersService>(() => _i7.ApiGetService(
        get<_i5.Dio>(),
        get<_i4.AppHelper>(),
      ));
  return get;
}

class _$RegisterModule extends _i8.RegisterModule {}
