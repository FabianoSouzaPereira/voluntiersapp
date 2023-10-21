import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:voluntiersapp/ui/home/home_cubit.dart';
import 'package:voluntiersapp/ui/home/home_page_state.dart';
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
