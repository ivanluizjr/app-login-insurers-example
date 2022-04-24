import 'package:flutter/material.dart';

import '../utils/constants.dart';


class GradientColorWidget extends StatelessWidget {
  const GradientColorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.9,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            kVerde,
            kVerdeAmarelo,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }
}
