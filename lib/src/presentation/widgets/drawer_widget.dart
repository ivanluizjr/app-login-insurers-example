import 'package:flutter/material.dart';


import '../utils/constants.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  void _closeDrawer() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF20242A),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            kTextoDrawer,
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF29917C),
              ),
              child: kTextoBotaoDrawer,
              onPressed: _closeDrawer,
            ),
          ],
        ),
      ),
    );
  }
}
