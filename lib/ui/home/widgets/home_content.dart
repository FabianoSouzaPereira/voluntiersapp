import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:voluntiersapp/ui/home/home_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:voluntiersapp/ui/home/widgets/home_card.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = GetIt.instance<HomeCubit>();

    final locale = AppLocalizations.of(context)!;
    return BlocProvider<HomeCubit>(
      create: (_) => cubit,
      child: Expanded(
        flex: 1,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          child: Scaffold(
            // backgroundColor: Colors.transparent.withOpacity(0.5),
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              title: Text(locale.voluntiers(1)[0].toUpperCase() + locale.voluntiers(1).substring(1).toLowerCase()),
            ),
            body: ListView.builder(
              itemCount: cubit.state.cards.length,
              itemBuilder: (ctx, index) {
                return Container(color: Theme.of(context).cardColor, child: HomeCard(onPressed: () {}, title: "Card"));
              },
            ),
          ),
        ),
      ),
    );
  }
}
