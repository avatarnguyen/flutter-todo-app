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
import 'core/data/repositories/todo_repository.dart' as _i8;
import 'core/domain/repositories/todo_repository.dart' as _i7;
import 'core/injectable_module.dart' as _i11;
import 'features/create_todo/domain/usecases/create_todo.dart' as _i9;
import 'features/todo_list/domain/usecases/get_todos.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  await gh.factoryAsync<_i3.Box<String>>(() => registerModule.todoBox,
      preResolve: true);
  gh.singleton<_i4.Client>(registerModule.httpClient);
  gh.lazySingleton<_i5.LocalDatasource>(
      () => _i5.HiveLocalDatasource(get<_i3.Box<String>>()));
  gh.lazySingleton<_i6.RemoteDatasource>(
      () => _i6.HttpRemoteDatasource(get<_i4.Client>()));
  gh.singleton<_i7.TodoRepository>(_i8.TodoRepositoryImpl(
      remoteDatasource: get<_i6.RemoteDatasource>(),
      localeDatasource: get<_i5.LocalDatasource>()));
  gh.lazySingleton<_i9.CreateTodo>(
      () => _i9.CreateTodo(get<_i7.TodoRepository>()));
  gh.singleton<_i10.GetTodos>(_i10.GetTodos(get<_i7.TodoRepository>()));
  return get;
}

class _$RegisterModule extends _i11.RegisterModule {}
