import 'package:clean_arquicture/feature/register/data/datasources/register_data_source.dart';
import 'package:clean_arquicture/feature/register/domain/repositories/register_repository.dart';
import 'package:clean_arquicture/feature/register/domain/usecases/get_list_cat_use_case.dart';
import 'package:kiwi/kiwi.dart';

import '../../feature/register/data/repositories/register_repository_impl.dart';

part 'injector.g.dart';

abstract class InjectorApp {
  static KiwiContainer container = KiwiContainer();
  static void setup() {
    var injector = _$InjectorApp();
    injector._configure();
  }

  static final resolve = container.resolve;

  //The repositories and their implementation, the use case and the datasource must always be registered.
  //If two or more use cases depend on the same repositories and datasource, only the new use case should be registered, since the rest will already be registered.

  //When you finish registering the new use case, you must run the following command in the console
  // flutter packages pub run build_runner build
  //If it fails, you must run the following command
  // flutter packages pub run build_runner build --delete-conflicting-outputs
  //The second command will overwrite the injector.g.dart file if necessary

  //A new factory configuration must be created every time there is a new repository and datasource.

  void _configure() {
    _configureAuthsModule();
  }

  void _configureAuthsModule() {
    _configureAuthFactories();
  }

  @Register.factory(RegisterRepository, from: RegisterRepositoryImpl)
  @Register.factory(GetListCatUseCase)
  @Register.factory(RegisterDataSource)
  void _configureAuthFactories();
}