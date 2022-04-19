import 'package:flutter/material.dart';

class BodyBottom extends StatelessWidget {
  const BodyBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var listBotoes = [
      'assets/images/Heart.png',
      'assets/images/Comments.png',
      'assets/images/Share.png',
    ];

    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: List.generate(listBotoes.length, (index) {
                        return Container(
                          width: 30 * 1,
                          child: Image.asset(listBotoes[index]),
                        );
                      }),
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/Ellipse66.png',
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    Image.asset(
                      'assets/images/Ellipse67.png',
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    Image.asset(
                      'assets/images/Ellipse66.png',
                    ),
                    // AQUI
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.32,
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/images/Bookmark.png',
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: const Text(
                '281 curtidas',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: Container(
                width: 120 * 2.6,
                child: const Text('''Vivi.vivan É desenvolvedor, trabalha com
programação orientada a objetos e ainda não sabe Designa Pa','''),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
