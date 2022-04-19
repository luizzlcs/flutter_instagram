import 'package:flutter/material.dart';

class BodyPage extends StatelessWidget {
  const BodyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: 40 * 1,
                height: 40 * 1,
                color: Colors.amber,
              )
            ],
          )
        ],
      ),
    );
  }
}
