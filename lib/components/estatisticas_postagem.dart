import 'package:facebook_interface_flutter/models/modelos.dart';
import 'package:facebook_interface_flutter/utils/paleta_cores.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import 'botao_postagem.dart';

class EstatisticasPostagem extends StatelessWidget {
  final Postagem postagem;

  const EstatisticasPostagem({super.key, required this.postagem});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: PaletaCores.azulFacebook,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.thumb_up,
                color: Colors.white,
                size: 10,
              ),
            ),
            SizedBox(width: 4),
            Expanded(
              child: Text(
                "${postagem.curtidas}",
                style: TextStyle(color: Colors.grey[700]),
              ),
            ),
            Text(
              "${postagem.comentarios} comentários",
              style: TextStyle(color: Colors.grey[700]),
            ),
            SizedBox(width: 10),
            Text(
              "${postagem.compartilhamentos} compartilhamentos",
              style: TextStyle(color: Colors.grey[700]),
            ),
          ],
        ),
        Divider(
          thickness: 1.2,
        ),
        Row(
          children: [
            BotaoPostagem(
              icone: Icon(
                LineIcons.thumbsUpAlt,
                color: Colors.grey[700],
              ),
              texto: "Curtir",
              onTap: () {},
            ),
            BotaoPostagem(
              icone: Icon(
                LineIcons.alternateCommentAlt,
                color: Colors.grey[700],
              ),
              texto: "Comerntar",
              onTap: () {},
            ),
            BotaoPostagem(
              icone: Icon(
                LineIcons.share,
                color: Colors.grey[700],
              ),
              texto: "Compartilhar",
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
