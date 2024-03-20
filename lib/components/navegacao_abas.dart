import 'package:facebook_interface_flutter/utils/paleta_cores.dart';
import 'package:flutter/material.dart';

class NavegacaoAbas extends StatelessWidget {
  final List<IconData> icones;
  final int indiceAbaSelecionada;
  final Function(int) onTap;
  final bool indicadorEmbaixo;

  const NavegacaoAbas({
    super.key,
    required this.icones,
    required this.indiceAbaSelecionada,
    required this.onTap,
    this.indicadorEmbaixo = false,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      onTap: onTap,
      indicator: BoxDecoration(
        border: indicadorEmbaixo
            ? Border(
                bottom: BorderSide(color: PaletaCores.azulFacebook, width: 3),
              )
            : Border(
                top: BorderSide(color: PaletaCores.azulFacebook, width: 3),
              ),
      ),
      tabs: icones
          .asMap()
          .map((indice, icone) {
            return MapEntry(
              indice,
              Tab(
                icon: Icon(
                  icone,
                  color: indiceAbaSelecionada == indice
                      ? PaletaCores.azulFacebook
                      : Colors.black54,
                  size: 30,
                ),
              ),
            );
          })
          .values
          .toList(),
    );
  }
}
