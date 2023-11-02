import 'package:flutter/material.dart';
import 'package:voluntiersapp/ui/home/widgets/borderedCardWidget.dart';
import 'package:voluntiersapp/ui/widgets/reorderableListWidget.dart';

class UserPage extends StatelessWidget {
  final String title;

  const UserPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: Colors.black26,
        appBar: AppBar(
          title: const Text(
            "Voluntiers",
            style: TextStyle(
              color: Colors.white,
              backgroundColor: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.transparent,
          child: Container(
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: ReorderableListWidget(
                    items: [
                      BorderedCardWidgets(
                        child: const Text(
                          "TEXTE 1",
                          style: TextStyle(
                            color: Colors.white,
                            backgroundColor: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      BorderedCardWidgets(child: const Text("TEXTE 2")),
                    ],
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
