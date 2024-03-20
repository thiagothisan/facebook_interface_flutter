import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_interface_flutter/utils/paleta_cores.dart';
import 'package:flutter/material.dart';

import 'package:facebook_interface_flutter/models/estoria.dart';

import 'imagem_perfil.dart';

class CartaoEstoria extends StatelessWidget {
  final Estoria estoria;
  final bool adicionarEstoria;

  const CartaoEstoria({
    super.key,
    required this.estoria,
    this.adicionarEstoria = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(
            imageUrl: estoria.urlImagem,
            height: double.infinity,
            width: 110,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: double.infinity,
          width: 110,
          decoration: BoxDecoration(
              gradient: PaletaCores.degradeEstoria,
              borderRadius: BorderRadius.circular(12)),
        ),
        Positioned(
          top: 8,
          left: 8,
          child: adicionarEstoria
              ? Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(Icons.add),
                    iconSize: 30,
                    color: PaletaCores.azulFacebook,
                    onPressed: () {},
                  ),
                )
              : ImagemPerfil(
                  urlImagem: estoria.usuario.urlImagem,
                  foiVisualizado: estoria.foiVisualizado,
                ),
        ),
        Positioned(
          bottom: 8,
          left: 8,
          right: 8,
          child: Text(
            adicionarEstoria ? "Criar Story" :
            estoria.usuario.nome,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
