import 'package:flutter/material.dart';
import 'package:flutter_instagram/home/instagram_page.dart';

class InstagramHomePage extends StatelessWidget {
  const InstagramHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const InstagramPage(),
    );
  }
}
