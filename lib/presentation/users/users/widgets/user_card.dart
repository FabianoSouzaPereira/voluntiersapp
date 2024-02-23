import 'package:flutter/material.dart';

class UserBorderedCard extends StatelessWidget {
  final Widget childa;
  final String title;
  final String description;

  const UserBorderedCard({
    super.key,
    required this.childa,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: const BorderSide(color: Colors.blue, width: 2),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.person),
            title: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                backgroundColor: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              description,
              style: const TextStyle(
                color: Colors.white,
                backgroundColor: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ButtonBar(
            children: <Widget>[
              TextButton(
                child: const Text(
                  'BOTÃO 1',
                  style: TextStyle(
                    color: Colors.white,
                    backgroundColor: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {},
              ),
              TextButton(
                child: const Text(
                  'BOTÃO 2',
                  style: TextStyle(
                    color: Colors.white,
                    backgroundColor: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  // Ação do botão 2
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
