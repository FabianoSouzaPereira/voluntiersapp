import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_reorderable_list/flutter_reorderable_list.dart';
import 'package:get_it/get_it.dart';
import 'package:voluntiersapp/ui/home/home_cubit.dart';
import 'package:voluntiersapp/ui/home/home_page_state.dart';
import 'package:voluntiersapp/ui/home/widgets/card_cubit.dart';
import 'package:voluntiersapp/ui/home/widgets/home_card.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = GetIt.instance<HomeCubit>();
    var cardCubit = GetIt.instance<CardCubit>();
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
              backgroundColor: Colors.transparent.withOpacity(0.5),
              appBar: AppBar(
                backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                title: Text(locale.voluntiers(1)[0].toUpperCase() + locale.voluntiers(1).substring(1).toLowerCase()),
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    BlocBuilder<HomeCubit, HomeState>(
                      builder: (context, state) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              BlocBuilder<CardCubit, List<HomeCard>>(
                                builder: (context, state) {
                                  if (state.isEmpty) {
                                    return const Center(child: Text('Loading...'));
                                  } else {
                                    return Container(
                                      constraints: BoxConstraints(
                                        maxHeight: MediaQuery.of(context).size.height * 0.2,
                                        minHeight: 0,
                                      ),
                                      child: ReorderableListView(
                                        onReorder: (oldIndex, newIndex) {
                                          cardCubit.reorderCards(oldIndex, newIndex);
                                        },
                                        scrollDirection: Axis.vertical,
                                        children: state.map((item) {
                                          return Column(
                                            children: [
                                              ReorderableItem(
                                                key: ValueKey(item.key),
                                                childBuilder: (BuildContext context, ReorderableItemState state) {
                                                  return Builder(
                                                    builder: (context) {
                                                      return item;
                                                    },
                                                  );
                                                },
                                              ),
                                            ],
                                          );
                                        }).toList(),
                                      ),
                                    );
                                  }
                                },
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  cardCubit.addCard(
                                      HomeCard(onPressed: () {}, title: "title", initialX: 50.0, initialY: 50.0));
                                },
                                tooltip: 'Adicionar card',
                                child: const Icon(Icons.add),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
