import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class BotaoCirculo extends StatelessWidget {
  final IconData icone;
  final double iconeTamanho;
  final VoidCallback onPressed;

  const BotaoCirculo({super.key, required this.icone, required this.iconeTamanho, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle,),
      margin: EdgeInsets.all(6),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icone),
        iconSize: iconeTamanho,
        color: Colors.black,
      ),
    );
  }
}
