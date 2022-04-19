import 'package:flutter/material.dart';

import 'body_bottom.dart';
import 'body_top.dart';

class BodyPage extends StatelessWidget {
  const BodyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            BodyTop(),
            SizedBox(
              height: 5,
            ),
            Image.network(
              'https://media.gettyimages.com/photos/web-design-development-and-coding-concept-picture-id1219854221?s=2048x2048',
            ),
            BodyBottom(),
          ],
        )
      ],
    );
  }
}
