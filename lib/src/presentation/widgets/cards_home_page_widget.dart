import 'package:authentication/src/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class CardHomePageWidget extends StatelessWidget {
  const CardHomePageWidget({Key? key, required this.text, required this.icon})
      : super(key: key);

  final String text;
  //final Image image;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    final double categoryHeight =
        MediaQuery.of(context).size.height * 0.30 - 60;
    return Center(
      child: Container(
        height: categoryHeight,
        //margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        padding: const EdgeInsets.only(
          left: 30,
          right: 30,
          top: 24,
        ),
        decoration: BoxDecoration(
          color: kColorLoginCard,
          borderRadius: BorderRadius.circular(20),
          shape: BoxShape.rectangle,
        ),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                icon,
                const SizedBox(
                  height: 5,
                ),
                Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
