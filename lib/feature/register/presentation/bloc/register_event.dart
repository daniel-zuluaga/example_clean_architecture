part of 'register_bloc.dart';

abstract class RegisterEvent {
  const RegisterEvent();
}

class GetListCatsEvent extends RegisterEvent {}
