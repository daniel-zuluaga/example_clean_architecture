import 'package:clean_arquicture/feature/register/domain/entities/cat_entity.dart';

abstract class RegisterRepository {
  Future<List<CatEntity>> getListCats();
}