import 'package:authentication/src/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class LoginCardEmptyWidget extends StatelessWidget {
  const LoginCardEmptyWidget({Key? key}) : super(key: key);

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
      ),
    );
  }
}
