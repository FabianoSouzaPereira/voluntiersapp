import 'package:flutter/material.dart';

class BorderedCardWidgets extends StatelessWidget {
  final Widget child;

  const BorderedCardWidgets({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      shadowColor: Colors.blue[50],
      surfaceTintColor: Colors.transparent,
      elevation: 5, // Elevação da sombra do card
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0), // Borda arredondada do card
        side: const BorderSide(color: Colors.blue, width: 2), // Cor e largura da borda
      ),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.check_circle_outline,
              color: Colors.white,
            ),
            title: Text(
              'Título do Card',
              style: TextStyle(
                color: Colors.white,
                backgroundColor: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Descrição do card...',
              style: TextStyle(
                color: Colors.white,
                backgroundColor: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
