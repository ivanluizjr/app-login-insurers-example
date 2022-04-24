import 'package:authentication/src/data/repositories/auth_repository.dart';
import 'package:authentication/src/presentation/controller/bloc/auth_event.dart';
import 'package:authentication/src/presentation/controller/bloc/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  AuthBloc({required this.authRepository}) : super(UnAuthenticated()) {
    //* Usuário pressionou login, enviamos o evento SignInReq. para o AuthBloc, para tratá-lo e emitir o estato autenticado se o usuário for autenticado
    on<SignInRequested>(
      ((event, emit) async {
        emit(Loading());
        try {
          await Future.delayed(
            const Duration(seconds: 2),
          );
          await authRepository.signIn(
              email: event.email, password: event.password);
          emit(Authenticated());
        } catch (e) {
          emit(AuthError(e.toString()));
          //emit(UnAuthenticated());
        }
      }),
    );

    //* Quando o usuário pressionar o botão SignUp, enviaremos o evento para SingnUpReq. para o Authbloc, para emitir estado autenticado
    on<SignUpRequested>(
      (event, emit) async {
        emit(Loading());
        try {
          await authRepository.signUp(
              email: event.email, password: event.password);
          emit(Authenticated());
        } catch (e) {
          emit(AuthError(e.toString()));
          emit(UnAuthenticated());
        }
      },
    );

    //* Usuário pressionou para sair, este evento é emitido
    on<SignOutRequested>(
      (event, emit) async {
        emit(Loading());
        await authRepository.signOut();
        emit(UnAuthenticated());
      },
    );
  }
}
