import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

//* Usuário fez login com e-mail e senha, esse evento é chamado
class SignInRequested extends AuthEvent {
  final String email;
  final String password;

  SignInRequested(this.email, this.password);
}

//* Usuário cadastrou email e senha, esse evento é chamado
class SignUpRequested extends AuthEvent {
  final String email;
  final String password;

  SignUpRequested(this.email, this.password);
}

//* Usuário desconectou, esse evendo é chamado
class SignOutRequested extends AuthEvent {}
