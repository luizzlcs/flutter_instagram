import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_instagram/componentes/menu_page.dart';
import 'package:flutter_instagram/componentes/usuarios_ao_vivo.dart';

import '../componentes/body_page.dart';
import '../componentes/usuarios_novo.dart';

class InstagramPage extends StatelessWidget {
  const InstagramPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    int indice = 0;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 248, 247, 247),
        title: MenuPage(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: indice,
        onTap: (index) {
          indice = index;
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Image.asset('assets/images/Home.png'),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Image.asset('assets/images/Search.png'),
          ),
          BottomNavigationBarItem(
            label: 'WhastApp',
            icon: Image.asset('assets/images/store.png'),
          ),
          BottomNavigationBarItem(
            label: 'Loja',
            icon: Image.asset('assets/images/loja.png'),
          ),
          const BottomNavigationBarItem(
            label: 'LogoMarca',
            icon: CircleAvatar(
              radius: 13,
              backgroundImage: NetworkImage(
                'https://s3-alpha-sig.figma.com/img/a57f/7188/c5c7aa2da965020d4f85fee632bb0bc2?Expires=1651449600&Signature=HFpPBbPsTKTqFkmwYnxqR1ovRLV8u6nJ5fHCX49cQOPwWKR5o17IzS0tc9tCo82ugXPjHb-OBBNtpZXFrjftk5NBeQkH~RQKlP9dQRC2kAMz9~KsbpJRRvUWWvisA0aL6NHVFwrlWz3E2yfo4eHsPo4okVE0GBbLoDx-9ESph7gtK10yBhof0H0Lulrl18Pejp6uCsqdRAuiA7UJxrduliwOyCxtuxkFzbL3rS6-0917zZKvtES5jXwUNzV6DpGlnaDwL5EB~KWgGB5jxAX6~ciyazbvY4uB8ayX5hrIHFdZPSV1Se-mVRWjyZCcR~ZdbbeiNQBFyg0Wk38HUKBuXg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
              ),
            ),
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
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
                child: ListView(
                  addAutomaticKeepAlives: false,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      color: Colors.white,
                      width: 122 * .6,
                      child: UsuariosNovo(),
                    ),
                    Container(
                      color: Colors.white,
                      width: 122 * .6,
                      child: UsuariosAoVivo(),
                    ),
                    Container(
                      color: Colors.white,
                      width: 122 * .6,
                      child: UsuariosAoVivo(),
                    ),
                    Container(
                      color: Colors.white,
                      width: 122 * .6,
                      child: UsuariosAoVivo(),
                    ),
                    Container(
                      color: Colors.white,
                      width: 122 * .6,
                      child: UsuariosAoVivo(),
                    ),
                    Container(
                      color: Colors.white,
                      width: 122 * .6,
                      child: UsuariosAoVivo(),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    BodyPage(),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
