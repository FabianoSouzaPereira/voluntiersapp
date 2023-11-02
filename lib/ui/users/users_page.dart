import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:voluntiersapp/ui/widgets/reorderableListWidget.dart';
import 'package:voluntiersapp/core/router/paths.dart' as paths;

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
            "Users",
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
                      GestureDetector(
                        child: const Text(
                          "voltar para home",
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        onTap: () {
                          GoRouter.of(context).go(paths.HomePagePath);
                        },
                      ),
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
