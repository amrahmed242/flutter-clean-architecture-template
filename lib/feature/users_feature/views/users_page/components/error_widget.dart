import 'package:flutter/material.dart';
import 'package:flutter_mvvm_clean_architecture/feature/users_feature/domain/page_models/users_page_model/users_page_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UsersErrorWidget extends ConsumerWidget {
  const UsersErrorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Error occured"),
        ElevatedButton(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(Icons.refresh),
              Text('reload page'),
            ],
          ),
          onPressed: () => ref.refresh(usersPageModel),
        ),
      ],
    );
  }
}
