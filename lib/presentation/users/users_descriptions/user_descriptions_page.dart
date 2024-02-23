import 'package:flutter/material.dart';

class UserDescriptionsPage extends StatelessWidget {
  const UserDescriptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: const Text(
        "Desciption",
        style: TextStyle(
          color: Colors.white,
          backgroundColor: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
