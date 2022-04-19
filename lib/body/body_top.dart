import 'package:flutter/material.dart';

class BodyTop extends StatelessWidget {
  const BodyTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 8, top: 8, right: 9.25),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/logo.png'),
              ),
            ),
            Column(
              children: const [
                Text(
                  'Vivi.vivan',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Programação',
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Text('...', style: TextStyle(fontSize: 18)),
        ),
      ],
    );
  }
}
