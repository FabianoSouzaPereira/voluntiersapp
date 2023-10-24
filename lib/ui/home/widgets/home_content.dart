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
  const HomeContent({Key? key});

  @override
  Widget build(BuildContext context) {
    var cubit = GetIt.instance<HomeCubit>();
    var cardCubit = GetIt.instance<CardCubit>();
    final locale = AppLocalizations.of(context)!;

    return BlocProvider<HomeCubit>(
      create: (_) => cubit,
      child: Expanded(
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
                            children: [
                              BlocBuilder<CardCubit, List<HomeCard>>(
                                builder: (context, cardList) {
                                  return Container(
                                    constraints: BoxConstraints(
                                      maxHeight: MediaQuery.of(context).size.height * 0.7,
                                      minHeight: 0,
                                    ),
                                    child: ReorderableListView(
                                      onReorder: (oldIndex, newIndex) {
                                        cardCubit.reorderCards(oldIndex, newIndex);
                                      },
                                      scrollDirection: Axis.vertical,
                                      children: cardList.map((item) {
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
                                },
                              ),

                              // Adicione um botão ou ação para adicionar novos cards
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
