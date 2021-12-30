import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvvm_clean_architecture/feature/users_feature/domain/page_models/users_page_model/users_page_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InitialUsersWidget extends ConsumerWidget {
  const InitialUsersWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('initial state'),
        ElevatedButton(
          child: const Text('fetch data'),
          onPressed: () => ref.read(usersPageModel.notifier).getUsers(),
        ),
        ElevatedButton(
          child: const Text('fetch error'),
          onPressed: () => ref.read(usersPageModel.notifier).getUsers(fail: true),
        ),
      ],
    );
  }
}
