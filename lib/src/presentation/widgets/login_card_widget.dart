import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller/bloc/auth_bloc.dart';
import '../controller/bloc/auth_event.dart';
import '../controller/bloc/check_circle_cubit.dart';
import '../utils/constants.dart';
import 'login_button_widget.dart';
import 'text_field_inputs_widget.dart';

class LoginCardWidget extends StatefulWidget {
  const LoginCardWidget({Key? key}) : super(key: key);

  @override
  State<LoginCardWidget> createState() => _LoginCardnWidgetState();
}

class _LoginCardnWidgetState extends State<LoginCardWidget> {
  late final CheckCircleCubit checkCircleCubit;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _emailController;
    _passwordController;
    super.initState();
    checkCircleCubit = CheckCircleCubit();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.45,
        width: MediaQuery.of(context).size.width * 0.8,
        padding: const EdgeInsets.only(
          left: 30,
          right: 30,
          top: 24,
          //horizontal: 30,
          //vertical: 25,
        ),
        decoration: BoxDecoration(
          color: kColorLoginCard,
          borderRadius: BorderRadius.circular(20),
          shape: BoxShape.rectangle,
        ),
        child: Column(
          children: [
            Row(
              children: const [
                kTextoEntrar,
                SizedBox(
                  width: 50.0,
                ),
                kTextoCadastrar,
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            TextFieldInputsWidget(
              emailController: _emailController,
              passwordController: _passwordController,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                BlocBuilder<CheckCircleCubit, bool>(
                  bloc: checkCircleCubit,
                  builder: (context, state) {
                    return GestureDetector(
                      onTap: () {
                        checkCircleCubit.checkCircle();
                      },
                      child: state
                          ? const Icon(
                              Icons.check_circle,
                              color: Color(0xFF14C2A9),
                            )
                          : const Icon(
                              Icons.check_circle,
                              color: Colors.white,
                            ),
                    );
                  },
                ),
                const SizedBox(
                  width: 4,
                ),
                kTextoCheckCircle,
                const SizedBox(
                  width: 30,
                ),
                kTextoRedefinirSenha,
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: 200,
              child: LoginButtonWidget(
                onPressed: () {
                  __authenticateWithEmailAndPassword(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  //* Metodo para autenticar os usuários quando pressionarem os botões respectivos de chamada
  void __authenticateWithEmailAndPassword(context) {
    BlocProvider.of<AuthBloc>(context).add(
      SignInRequested(_emailController.text, _passwordController.text),
    );
  }
}
