import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:volunteersapp/presentation/users/users/users_cubit.dart';
import 'package:volunteersapp/presentation/users/users/users_page_state.dart';
import 'package:volunteersapp/presentation/widgets/reorderableListWidget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:volunteersapp/core/router/paths.dart' as paths;
import 'package:get_it/get_it.dart';

class UserPage extends StatelessWidget {
  final String title;

  UserPage({Key? key, required this.title}) : super(key: key);

  final _cubit = GetIt.instance.get<UsersCubit>()..init();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: Colors.black26,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Column(
            children: [
              const Row(
                children: [
                  Text(
                    "Users",
                    style: TextStyle(
                      color: Colors.white,
                      backgroundColor: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  GestureDetector(
                    child: const Text(
                      "voltar para home",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    onTap: () {
                      GoRouter.of(context).go(paths.HomePagePath);
                    },
                  ),
                ],
              ),
            ],
          ),
          backgroundColor: Colors.black,
        ),
        body: BlocBuilder<UsersCubit, UsersPageState>(
          bloc: _cubit,
          builder: (context, state) {
            if (state is UsersPageLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is UsersPageLoaded) {
              return Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.transparent,
                child: Container(
                  color: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: ReorderableListWidget(
                          items: [
                            Column(
                              children: [
                                GestureDetector(
                                  child: const Text(
                                    "Descriptions",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  onTap: () {
                                    GoRouter.of(context).go(paths.UserDescriptionsPath);
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
            return Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                "Nada foi adicionado ainda.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
