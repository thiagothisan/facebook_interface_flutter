import 'package:facebook_interface_flutter/data/dados.dart';
import 'package:facebook_interface_flutter/models/modelos.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../components/area_criar_postagem.dart';
import '../components/area_estoria.dart';
import '../components/botao_circulo.dart';
import '../components/cartao_postagem.dart';
import '../utils/paleta_cores.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            // expandedHeight: 250,
            floating: true,
            centerTitle: false,
            title: Text(
              "facebook",
              style: TextStyle(
                  color: PaletaCores.azulFacebook,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  letterSpacing: -1.2),
            ),
            actions: [
              BotaoCirculo(
                  icone: Icons.search, iconeTamanho: 30, onPressed: () {}),
              BotaoCirculo(
                  icone: LineIcons.facebookMessenger,
                  iconeTamanho: 30,
                  onPressed: () {}),
            ],
          ),
          SliverToBoxAdapter(
            child: AreaCriarPostagem(
              usuario: usuarioAtual,
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
            sliver: SliverToBoxAdapter(
              child: AreaEstoria(
                usuario: usuarioAtual,
                estorias: estorias,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, indice) {
              Postagem postagem = postagens[indice];

              return CartaoPostagem(
                postagem: postagem,
              );
            }, childCount: postagens.length),
          ),
        ],
      ),
    );
  }
}
