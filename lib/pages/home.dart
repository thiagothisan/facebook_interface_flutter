import 'package:facebook_interface_flutter/data/dados.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../components/area_criar_postagem.dart';
import '../components/botao_circulo.dart';
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
            child: AreaCriarPostagem(usuario: usuarioAtual,),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.white,
              height: 1000,
            ),
          ),
        ],
      ),
    );
  }
}
