import 'package:authentication/src/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class DrawerCustomListTitleWidget extends StatelessWidget {
  const DrawerCustomListTitleWidget(
      {Key? key, required this.icon, required this.text, required this.onTap})
      : super(key: key);

  final IconData icon;
  final Text text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: kColorLoginCard),
          ),
        ),
        child: InkWell(
          splashColor: kColorLoginCard,
          onTap: onTap,
          child: Row(
            children: [
              Icon(
                icon,
                color: kColorIconsDrawer,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: text,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
