// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i3;
import 'package:http/http.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

import 'core/data/datasource/locale_datasource.dart' as _i5;
import 'core/data/datasource/remote_datasource.dart' as _i6;
import 'core/injectable_module.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  await gh.factoryAsync<_i3.Box<String>>(() => registerModule.todoBox,
      preResolve: true);
  gh.lazySingleton<_i4.Client>(() => registerModule.httpClient());
  gh.lazySingleton<_i5.LocalDatasource>(
      () => _i5.HiveLocalDatasource(get<_i3.Box<String>>()));
  gh.singleton<_i6.RemoteDatasource>(
      _i6.HttpRemoteDatasource(get<_i4.Client>()));
  return get;
}

class _$RegisterModule extends _i7.RegisterModule {}
