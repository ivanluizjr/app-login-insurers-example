import 'package:authentication/src/presentation/controller/bloc/auth_bloc.dart';
import 'package:authentication/src/presentation/controller/bloc/auth_state.dart';
import 'package:authentication/src/presentation/utils/constants.dart';
import 'package:authentication/src/presentation/views/Home/home_page.dart';
import 'package:authentication/src/presentation/widgets/login_card_empty_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/gradient_color_widget.dart';
import '../../widgets/login_card_widget.dart';
import '../../widgets/logo_text_initial_widget.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF20242A),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is Authenticated) {
            //* Navega para tela do painel se o usuário estiver autenticado
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          } else if (state is AuthError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.error),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is Loading) {
            return Center(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [kVerde, kVerdeAmarelo]),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logo_tokio_branco.png',
                      height: 60,
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: const [
                        LoginCardEmptyWidget(),
                        CircularProgressIndicator(
                          backgroundColor: Colors.grey,
                          color: kVerde,
                          strokeWidth: 10,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }
          return Center(
            child: SingleChildScrollView(
              child: Stack(
                children: const [
                  GradientColorWidget(),
                  Padding(
                    padding: EdgeInsets.all(24.0),
                    child: LogoTextInitialWidget(),
                  ),
                  Positioned(
                    child: LoginCardWidget(),
                    top: 0,
                    bottom: 0,
                    left: 0,
                    right: 0,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
