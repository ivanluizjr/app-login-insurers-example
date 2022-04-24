import 'package:flutter/material.dart';

import '../utils/constants.dart';

class LogoTextInitialWidget extends StatelessWidget {
  const LogoTextInitialWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/logo_tokio_branco.png',
              height: 30,
              //width: 50,
            ),
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            kTextoBemVindo,
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Expanded(
              child: kFraseTelaLogin,
            ),
            //kFraseTelaLogin,
          ],
        ),
        const SizedBox(
          height: 400,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo_tokio_resolve.png',
              height: 100,
              width: 100,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            kTextoRedesSociais,
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/icon_google.png',
              height: 20,
              width: 20,
            ),
            const SizedBox(
              width: 50,
            ),
            Image.asset(
              'assets/images/icon_facebook.png',
              height: 20,
              width: 20,
            ),
            const SizedBox(
              width: 50,
            ),
            Image.asset(
              'assets/images/icon_twitter.png',
              height: 20,
              width: 20,
            ),
          ],
        )
      ],
    );
  }
}
