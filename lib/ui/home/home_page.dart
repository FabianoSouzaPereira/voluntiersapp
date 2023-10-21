import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:voluntiersapp/ui/home/home_cubit.dart';
import 'package:voluntiersapp/ui/home/home_page_state.dart';

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = GetIt.instance.get<HomeCubit>();

    return BlocProvider<HomeCubit>(
      create: (_) => cubit,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Contador'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Você pressionou o botão tantas vezes:',
              ),
              BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) {
                  if (state is HomeStateUpdated) {
                    return Text(
                      state.counter.toString(),
                      style: Theme.of(context).textTheme.headlineMedium,
                    );
                  }
                  return Text(
                    '0',
                    style: Theme.of(context).textTheme.headlineMedium,
                  );
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            cubit.incrementCounter();
          },
          tooltip: 'Incrementar',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
