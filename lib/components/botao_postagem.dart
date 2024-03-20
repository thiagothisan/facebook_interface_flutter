import 'package:flutter/material.dart';

class BotaoPostagem extends StatelessWidget {
  final Icon icone;
  final String texto;
  final VoidCallback onTap;

  const BotaoPostagem(
      {super.key,
      required this.icone,
      required this.texto,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        child: InkWell(
          onTap: onTap,
          child: Container(
            child: Row(
              children: [
                icone,
                SizedBox(width: 4),
                Text(
                  texto,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
