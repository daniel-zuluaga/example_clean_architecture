import 'package:bloc/bloc.dart';
import 'package:clean_arquicture/core/injector/injector.dart';
import 'package:clean_arquicture/feature/register/domain/entities/cat_entity.dart';
import 'package:clean_arquicture/feature/register/domain/usecases/get_list_cat_use_case.dart';
import 'package:equatable/equatable.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterInitial(cats: [])) {
    final getListCats = InjectorApp.resolve<GetListCatUseCase>();
    on<GetListCatsEvent>((event, emit) async{
      final cats = await getListCats.getListCats();
      emit(RegisterInitial(cats: cats));
    },);
  }
}
