import 'package:flutter/material.dart';
import 'package:voluntiersapp/ui/widgets/reorderableListWidget.dart';
import 'package:voluntiersapp/ui/home/widgets/BorderedCardWidget.dart';
import 'package:voluntiersapp/core/router/paths.dart' as paths;

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var viewPaddingTop = MediaQuery.of(context).viewPadding.top;
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
                SizedBox(height: viewPaddingTop),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ReorderableListWidget(
                      items: const [
                        BorderedCardWidgets(
                          route: paths.UserPagePath,
                          title: 'Users',
                          description: "Description users",
                        ),
                        BorderedCardWidgets(
                          route: paths.SettingsPagePath,
                          title: 'Setttings',
                          description: "Description Settings",
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
