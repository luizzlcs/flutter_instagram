import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_instagram/componentes/menu_page.dart';
import 'package:flutter_instagram/componentes/usuarios_ao_vivo.dart';

import '../body/body_page.dart';
import '../componentes/stories.dart';
import '../componentes/usuarios_novo.dart';

class InstagramPage extends StatelessWidget {
  const InstagramPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var list = [
      'assets/images/Home.png',
      'assets/images/Search.png',
      'assets/images/store.png',
      'assets/images/loja.png',
      'assets/images/logo.png',
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 248, 247, 247),
        title: MenuPage(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: List.generate(list.length, (index) {
          return BottomNavigationBarItem(
            label: 'Home',
            icon: Image.asset(list[index]),
          );
        }),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
              child: Column(
                children: [
                  Container(
                    //color: Color.fromARGB(255, 240, 124, 124),
                    height: 62 * 1.5,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        border: Border(
                      bottom: BorderSide(
                        width: 0.5 * 2,
                        color: Colors.grey,
                      ),
                    )),
                    child: const stories(),
                  ),
                  const BodyPage(),
                  const BodyPage(),
                  const BodyPage(),
                  const BodyPage(),
                  const BodyPage(),
                  const BodyPage(),
                  const BodyPage(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
