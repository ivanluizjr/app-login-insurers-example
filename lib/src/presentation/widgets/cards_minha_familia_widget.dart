import 'package:authentication/src/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class CardMinhaFamiliaWidget extends StatelessWidget {
  const CardMinhaFamiliaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: const [
              Text(
                'Minha Família',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 225,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: kColorLoginCard,
                  ),
                  height: 180,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          CircleAvatar(
                            child: Image.asset('assets/images/jane_doe_02.png',
                                height: 55),
                            radius: 30,
                            backgroundColor: Colors.white,
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          const Text(
                            'Larissa Reis Lazarinni',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 1,
                        color: Colors.black,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          CircleAvatar(
                            child: Image.asset(
                              'assets/images/jane_doe_01.png',
                              height: 55,
                            ),
                            radius: 30,
                            backgroundColor: Colors.white,
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          const Text(
                            'Alice Lazarinni Maximo',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: CircleAvatar(
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            kVerde.withOpacity(1),
                            kVerdeAmarelo.withOpacity(1),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                    radius: 40,
                    backgroundColor: kColorLoginCard,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
