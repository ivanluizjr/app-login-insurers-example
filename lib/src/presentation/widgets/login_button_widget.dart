import 'package:flutter/material.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({Key? key, required this.onPressed,}) : super(key: key);

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2.0,
      borderRadius: BorderRadius.circular(30.0),
      color: const Color(0xFF29917C),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        onPressed: onPressed,
        child: const Text("Login",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }
}
