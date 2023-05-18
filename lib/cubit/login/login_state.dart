part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}
class LoginLoading extends LoginState {}
class LoginSuccess extends LoginState {
  final login objlogin;

  LoginSuccess(this.objlogin);
}
class LoginError extends LoginState {}
