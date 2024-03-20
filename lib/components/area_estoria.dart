import 'package:facebook_interface_flutter/data/dados.dart';
import 'package:flutter/material.dart';
import 'package:facebook_interface_flutter/models/modelos.dart';

import 'cartao_estoria.dart';

class AreaEstoria extends StatelessWidget {
  final Usuario usuario;
  final List<Estoria> estorias;

  const AreaEstoria({
    super.key,
    required this.usuario,
    required this.estorias,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        scrollDirection: Axis.horizontal,
        itemCount: 1 + estorias.length, // 1 + 8 = 9
        itemBuilder: (context, indeice) {
          if (indeice == 0) {
            Estoria estoriaUsuario = Estoria(
              usuario: usuarioAtual,
              urlImagem: usuarioAtual.urlImagem,
            );

            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: CartaoEstoria(
                estoria: estoriaUsuario,
                adicionarEstoria: true,
              ),
            );
          }

          Estoria estoria = estorias[indeice - 1];

          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: CartaoEstoria(
              estoria: estoria,
            ),
          );
        },
      ),
    );
  }
}
