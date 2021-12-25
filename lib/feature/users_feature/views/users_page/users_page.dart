import 'package:flutter/material.dart';
import 'package:flutter_mvvm_clean_architecture/feature/users_feature/data/providers/users_provider.dart';
import 'package:flutter_mvvm_clean_architecture/feature/users_feature/domain/page_models/users_page_model/users_page_model.dart';
import 'package:flutter_mvvm_clean_architecture/feature/users_feature/views/users_page/components/error_widget.dart';
import 'package:flutter_mvvm_clean_architecture/feature/users_feature/views/users_page/components/users_list_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UsersScreen extends ConsumerStatefulWidget {
  static const String routeName = 'UsersScreen';
  const UsersScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _UsersScreenState();
}

class _UsersScreenState extends ConsumerState<UsersScreen> {
  @override
  Widget build(BuildContext context) {
    final model = ref.watch(usersPageModel);
    return Scaffold(
      body: Center(
        child: model.when(
          initial: () => const Text('initial state'),
          loading: () => const CircularProgressIndicator(),
          data: (users) => UsersListWidget(users: users),
          error: (error) => const UsersErrorWidget(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(usersPageModel.notifier).getUsers(),
        child: const Icon(Icons.download),
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
                  Text(data[index].name, style: Theme.of(context).textTheme.headline5),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(data[index].nickname, style: Theme.of(context).textTheme.subtitle2)
                ],
              ),
            );
          },
        );
      },
      loading: () => const CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(Colors.teal),
      ),
      error: (_, __) => UsersErrorWidget(ref: ref, provider: usersProvider),
    );
  }
}
