// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'register_bloc.dart';

abstract class RegisterState extends Equatable {
  const RegisterState();  

  @override
  List<Object> get props => [];
}
class RegisterInitial extends RegisterState {
  final List<CatEntity> cats;
  const RegisterInitial({
    required this.cats,
  });

  @override
  List<Object> get props => [cats];
}
