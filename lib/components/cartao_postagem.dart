import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_interface_flutter/components/cabecalho_postagem.dart';
import 'package:facebook_interface_flutter/models/modelos.dart';
import 'package:flutter/material.dart';

import 'estatisticas_postagem.dart';

class CartaoPostagem extends StatelessWidget {
  final Postagem postagem;

  const CartaoPostagem({super.key, required this.postagem});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CabecalhoPostagem(postagem: postagem),
                Text(
                  postagem.descricao,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: CachedNetworkImage(imageUrl: postagem.urlImagem),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: EstatisticasPostagem(postagem: postagem),
          ),
        ],
      ),
    );
  }
}
