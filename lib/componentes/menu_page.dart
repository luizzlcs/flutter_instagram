import 'package:flutter/material.dart';
import 'package:flutter_instagram/componentes/usuarios_ao_vivo.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Image.asset('assets/images/vector.png'),
          color: Colors.white,
        ),
        Row(
          children: [
            Image.asset(
              'assets/images/Heart.png',
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset('assets/images/Mais.png'),
            ),
            Image.asset('assets/images/Share.png'),
          ],
        )
      ],
    );
  }
}


