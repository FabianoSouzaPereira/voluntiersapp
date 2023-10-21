import 'package:flutter/material.dart';
import 'package:voluntiersapp/ui/home/widgets/home_content.dart';
import 'package:voluntiersapp/ui/home/widgets/home_topbar.dart';

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var viewPaddingTop = MediaQuery.of(context).viewPadding.top;

    return Container(
      color: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          SizedBox(
            height: viewPaddingTop,
          ),
          const HomeTopBar(),
          const SizedBox(height: 16),
          HomeContent(),
        ],
      ),
    );
  }
}
