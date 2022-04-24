import 'package:equatable/equatable.dart';

abstract class AuthState extends Equatable {}

//* Usuário clicou no botão login, estado alterado para carregar primeiro e autenticar depois
class Loading extends AuthState {
  @override
  List<Object?> get props => [];
}

//* Usuário foi autenticado, o estado muda para autenticado
class Authenticated extends AuthState {
  @override
  List<Object?> get props => [];
}

//* Estado inicial do bloc, usuário não autenticado, o estado alterado para não autenticado
class UnAuthenticated extends AuthState {
  @override
  List<Object?> get props => [];
}

//* Se tiver erro, estado é alterado para erro
class AuthError extends AuthState {
  final String error;

  AuthError(this.error);

  @override
  List<Object?> get props => [];
}
