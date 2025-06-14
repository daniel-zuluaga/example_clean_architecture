// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'injector.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$InjectorApp extends InjectorApp {
  @override
  void _configureAuthFactories() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerFactory<RegisterRepository>((c) => RegisterRepositoryImpl(
          registerDataSource: c.resolve<RegisterDataSource>()))
      ..registerFactory((c) => GetListCatUseCase(
          registerRepository: c.resolve<RegisterRepository>()))
      ..registerFactory((c) => RegisterDataSource());
  }
}
