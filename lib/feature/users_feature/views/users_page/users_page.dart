import 'package:flutter/material.dart';
import 'package:flutter_mvvm_clean_architecture/feature/users_feature/data/providers/users_provider.dart';
import 'package:flutter_mvvm_clean_architecture/feature/users_feature/domain/page_models/users_page_model/users_page_model.dart';
import 'package:flutter_mvvm_clean_architecture/feature/users_feature/views/users_page/components/error_widget.dart';
import 'package:flutter_mvvm_clean_architecture/feature/users_feature/views/users_page/components/initial_widget.dart';
import 'package:flutter_mvvm_clean_architecture/feature/users_feature/views/users_page/components/users_list_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UsersPage extends ConsumerWidget {
  static const String routeName = 'UsersPage';
  static final GlobalKey<ScaffoldState> usersPageKey = GlobalKey<ScaffoldState>();
  const UsersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(usersPageModel);
    return Scaffold(
      key: usersPageKey,
      body: Center(
        child: model.when(
          initial: () => const InitialUsersWidget(),
          loading: () => const CircularProgressIndicator(),
          data: (users) => UsersListWidget(users: users),
          error: (error) => const UsersErrorWidget(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.refresh(usersPageModel),
        child: const Icon(Icons.refresh),
      ),
    );
  }
}

class UsersUsingFutureProvider extends ConsumerWidget {
  const UsersUsingFutureProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final quoteApiProvider = ref.watch(usersProvider);
    return quoteApiProvider.when(
      data: (data) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(30),
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(30),
              width: MediaQuery.of(context).size.width - 60,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(data[index].firstName,
                      style: Theme.of(context).textTheme.headline5),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(data[index].lastName, style: Theme.of(context).textTheme.subtitle2)
                ],
              ),
            );
          },
        );
      },
      loading: () => const CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(Colors.teal),
      ),
      error: (_, __) => const UsersErrorWidget(),
    );
  }
}
