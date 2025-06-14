import 'package:clean_arquicture/feature/register/domain/entities/cat_entity.dart';
import 'package:clean_arquicture/feature/register/domain/repositories/register_repository.dart';

class GetListCatUseCase {
  final RegisterRepository registerRepository;
  GetListCatUseCase({
    required this.registerRepository,
  });

  Future<List<CatEntity>> getListCats() async {
    return await registerRepository.getListCats();
  }
}
