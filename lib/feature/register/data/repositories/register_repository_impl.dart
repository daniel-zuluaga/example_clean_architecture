import 'package:clean_arquicture/feature/register/data/datasources/register_data_source.dart';
import 'package:clean_arquicture/feature/register/domain/entities/cat_entity.dart';
import 'package:clean_arquicture/feature/register/domain/repositories/register_repository.dart';

class RegisterRepositoryImpl extends RegisterRepository {
  final RegisterDataSource registerDataSource;

  RegisterRepositoryImpl({required this.registerDataSource});

  @override
  Future<List<CatEntity>> getListCats() async {
    return await registerDataSource.getListCats();
  }
}
