import 'package:material_ui/material_ui.dart';
import 'package:flutter_mvvm_clean_architecture/features/users/controllers/users_providers.dart';
import 'package:flutter_mvvm_clean_architecture/features/users/controllers/users_page_controller.dart';
import 'package:flutter_mvvm_clean_architecture/features/users/controllers/users_page_state.dart';
import 'package:flutter_mvvm_clean_architecture/features/users/widgets/error_widget.dart';
import 'package:flutter_mvvm_clean_architecture/features/users/widgets/initial_widget.dart';
import 'package:flutter_mvvm_clean_architecture/features/users/widgets/users_list_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UsersPage extends ConsumerWidget {
  static const String routeName = 'users';
  static const String routePath = '/users';
  static final GlobalKey<ScaffoldState> usersPageKey = GlobalKey<ScaffoldState>();
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(usersPageControllerProvider);
    return Scaffold(
      key: usersPageKey,
      body: Center(
        child: switch (model) {
          UsersInitial() => const InitialUsersWidget(),
          UsersLoading() => const CircularProgressIndicator(),
          UsersData(:final users) => UsersListWidget(users: users),
          UsersError(:final failure) => UsersErrorWidget(failure: failure),
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.invalidate(usersPageControllerProvider),
        child: const Icon(Icons.refresh),
      ),
    );
  }
}

class UsersUsingFutureProvider extends ConsumerWidget {
  const UsersUsingFutureProvider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quoteApiProvider = ref.watch(usersProvider);
    return switch (quoteApiProvider) {
      AsyncData(value: final data) => ListView.builder(
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
                Text(data[index].firstName, style: Theme.of(context).textTheme.headlineSmall),
                const SizedBox(height: 20),
                Text(data[index].lastName, style: Theme.of(context).textTheme.titleSmall),
              ],
            ),
          );
        },
      ),
      AsyncError() => const UsersErrorWidget(),
      _ => const CircularProgressIndicator(valueColor: AlwaysStoppedAnimation(Colors.teal)),
    };
  }
}
