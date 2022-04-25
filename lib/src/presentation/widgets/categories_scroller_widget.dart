import 'package:authentication/src/presentation/utils/constants.dart';
import 'package:authentication/src/presentation/widgets/cards_home_page_widget.dart';
import 'package:flutter/material.dart';

class CategoriesScrollerWidget extends StatelessWidget {
  const CategoriesScrollerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double categoryHeight =
        MediaQuery.of(context).size.height * 0.30 - 80;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        child: FittedBox(
          fit: BoxFit.fill,
          alignment: Alignment.topCenter,
          child: Row(
            children: const <Widget>[
              Center(
                child: CardHomePageWidget(
                  icon: Icon(
                    Icons.drive_eta,
                    size: 100,
                    color: kVerde,
                  ),
                  text: 'Automóvel',
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Center(
                child: CardHomePageWidget(
                  text: 'Residência',
                  icon: Icon(
                    Icons.home,
                    size: 100,
                    color: kVerde,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Center(
                child: CardHomePageWidget(
                  text: 'Vida',
                  icon: Icon(
                    Icons.health_and_safety_rounded,
                    size: 100,
                    color: kVerde,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Center(
                child: CardHomePageWidget(
                  text: 'Acidentes Pessoais',
                  icon: Icon(
                    Icons.accessible_forward,
                    size: 100,
                    color: kVerde,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Center(
                child: CardHomePageWidget(
                  text: 'Moto',
                  icon: Icon(
                    Icons.motorcycle_outlined,
                    size: 100,
                    color: kVerde,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Center(
                child: CardHomePageWidget(
                  text: 'Empresa',
                  icon: Icon(
                    Icons.business,
                    size: 100,
                    color: kVerde,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
