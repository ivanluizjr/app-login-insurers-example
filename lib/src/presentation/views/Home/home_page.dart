import 'package:authentication/src/presentation/utils/constants.dart';
import 'package:authentication/src/presentation/widgets/cards_contratos_widget.dart';
import 'package:authentication/src/presentation/widgets/cards_minha_familia_widget.dart';
import 'package:authentication/src/presentation/widgets/categories_scroller_widget.dart';
import 'package:authentication/src/presentation/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CategoriesScrollerWidget categoriesScrollerWidget =
      const CategoriesScrollerWidget();

  List<Widget> intemData = [];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kColorBackgroundScaffold,
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  kVerde.withOpacity(1),
                  kVerdeAmarelo.withOpacity(1),
                ],
              ),
            ),
          ),
        ),
        drawer: const DrawerWidget(),
        body: SingleChildScrollView(
          child: Column(children: [
            Stack(
              children: [
                Image.asset('assets/images/imagem_familia.jpg'),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: categoriesScrollerWidget,
                ),
              ],
            ),
            const CardMinhaFamiliaWidget(),
            const CardContratosWidget(),
          ]),
        ),
      ),
    );
  }
}
