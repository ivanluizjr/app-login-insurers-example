import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class TextFieldInputsWidget extends StatelessWidget {
  TextFieldInputsWidget({
    Key? key,
    required this.emailController,
    required this.passwordController,
  }) : super(key: key);

  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: emailController,
          textAlign: TextAlign.center,
          autocorrect: false,
          autofocus: false,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) {
            return value != null && !EmailValidator.validate(value)
                ? 'Digite um e-mail válido'
                : null;
          },
          decoration: InputDecoration(
            hintText: 'E-MAIL',
            hintStyle: TextStyle(
              color: Colors.grey[700],
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: const BorderSide(
                color: Colors.white,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: const BorderSide(
                color: Colors.white,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: const BorderSide(
                color: Colors.white,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: const BorderSide(
                color: Colors.white,
              ),
            ),
            filled: true,
            fillColor: Colors.transparent,
            contentPadding: const EdgeInsets.all(10.0),
          ),
        ),
        const SizedBox(
          height: 12.0,
        ),
        TextFormField(
          obscureText: true,
          controller: passwordController,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.text,
          autocorrect: false,
          autofocus: false,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) {
            return value != null && value.length < 6
                ? "Mínimo 6 caracteres"
                : null;
          },
          decoration: InputDecoration(
            hintText: 'SENHA',
            hintStyle: TextStyle(
              color: Colors.grey[700],
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: const BorderSide(
                color: Colors.white,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: const BorderSide(
                color: Colors.white,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: const BorderSide(
                color: Colors.white,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: const BorderSide(
                color: Colors.white,
              ),
            ),
            filled: true,
            fillColor: Colors.transparent,
            contentPadding: const EdgeInsets.all(10.0),
          ),
        ),
      ],
    );
  }
}
