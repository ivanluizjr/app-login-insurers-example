import 'package:authentication/src/presentation/utils/constants.dart';
import 'package:authentication/src/presentation/views/SignIn/sign_in.dart';
import 'package:authentication/src/presentation/widgets/drawer_custom_list_title_widget.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  void _closeDrawer() {
    Navigator.of(context).pop();
  }

  void _logout() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SignIn(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kColorBackgroundScaffold,
      child: ListView(
        children: [
          SizedBox(
            height: 130,
            child: DrawerHeader(
              decoration: const BoxDecoration(
                color: kColorLoginCard,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Image.asset(
                      'assets/images/john_doe.png',
                      height: 55,
                    ),
                    radius: 30,
                    backgroundColor: Colors.white,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: 15),
                      kTextoDrawerImageOla,
                      kTextoDrawerImageNome,
                    ],
                  ),
                ],
              ),
            ),
          ),
          DrawerCustomListTitleWidget(
            onTap: () {},
            icon: Icons.format_list_bulleted,
            text: kTextoDrawerHomeCotar,
          ),
          DrawerCustomListTitleWidget(
            icon: Icons.gpp_good_outlined,
            text: kTextoDrawerMinhasContatacoes,
            onTap: () {},
          ),
          DrawerCustomListTitleWidget(
            icon: Icons.info_outline,
            text: kTextoDrawerMeusSinistros,
            onTap: () {},
          ),
          DrawerCustomListTitleWidget(
            icon: Icons.family_restroom,
            text: kTextoDrawerMinhaFamilia,
            onTap: () {},
          ),
          DrawerCustomListTitleWidget(
            icon: Icons.drive_eta_outlined,
            text: kTextoDrawerMeusBens,
            onTap: () {},
          ),
          DrawerCustomListTitleWidget(
            icon: Icons.payment_outlined,
            text: kTextoDrawerPagamentos,
            onTap: () {},
          ),
          DrawerCustomListTitleWidget(
            icon: Icons.person_outline,
            text: kTextoDrawerCorretores,
            onTap: () {},
          ),
          DrawerCustomListTitleWidget(
            icon: Icons.payment_sharp,
            text: kTextoDrawerValidarBoleto,
            onTap: () {},
          ),
          DrawerCustomListTitleWidget(
            icon: Icons.phone_callback_outlined,
            text: kTextoDrawerTelefones,
            onTap: () {},
          ),
          DrawerCustomListTitleWidget(
            icon: Icons.monetization_on_outlined,
            text: kTextoDrawerIndique,
            onTap: () {},
          ),
          DrawerCustomListTitleWidget(
            icon: Icons.brightness_5_outlined,
            text: kTextoDrawerConfig,
            onTap: () {},
          ),
          const SizedBox(
            height: 15,
          ),
          DrawerCustomListTitleWidget(
            icon: Icons.exit_to_app,
            text: kTextoDrawerExit,
            onTap: _closeDrawer,
          ),
          DrawerCustomListTitleWidget(
            icon: Icons.close,
            text: kTextoDrawerLogout,
            onTap: _logout,
          ),
        ],
      ),
    );
  }
}
