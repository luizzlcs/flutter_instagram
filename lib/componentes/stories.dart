import 'package:flutter/material.dart';
import 'package:flutter_instagram/componentes/usuarios_ao_vivo.dart';
import 'package:flutter_instagram/componentes/usuarios_novo.dart';

class stories extends StatelessWidget {
  const stories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      addAutomaticKeepAlives: false,
      scrollDirection: Axis.horizontal,
      children: const [
        UsuariosNovo(),
        SizedBox(
          width: 8,
        ),
        UsuariosAoVivo(),
        SizedBox(
          width: 8,
        ),
        UsuariosAoVivo(),
        SizedBox(
          width: 8,
        ),
        UsuariosAoVivo(),
        SizedBox(
          width: 8,
        ),
        UsuariosAoVivo(),
        SizedBox(
          width: 8,
        ),
        UsuariosAoVivo(),
        SizedBox(
          width: 8,
        ),
        UsuariosAoVivo(),
        SizedBox(
          width: 8,
        ),
        UsuariosAoVivo(),
        SizedBox(
          width: 8,
        ),
        UsuariosAoVivo(),
        SizedBox(
          width: 8,
        ),
        UsuariosAoVivo(),
        SizedBox(
          width: 8,
        ),
        UsuariosAoVivo(),
      ],
    );
  }
}
