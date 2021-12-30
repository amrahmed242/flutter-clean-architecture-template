import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvvm_clean_architecture/core/utils/faliure.dart';
import 'package:flutter_mvvm_clean_architecture/feature/users_feature/data/models/user.dart';
import 'package:flutter_mvvm_clean_architecture/feature/users_feature/domain/page_models/users_page_model/users_page_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UsersListWidget extends ConsumerWidget {
  final Either<Failure, List<User>> users;
  const UsersListWidget({Key? key, required this.users}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return users.fold(
      (failure) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Error: ${failure.message} "),
            ElevatedButton(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.refresh),
                  Text('try again'),
                ],
              ),
              onPressed: () => ref.read(usersPageModel.notifier).getUsers(),
            ),
          ],
        );
      },
      (users) {
        return ListView.builder(
          itemCount: users.length,
          shrinkWrap: true,
          itemBuilder: (context, index) => Center(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('user ${users[index].firstName}'),
          )),
        );
      },
    );
  }
}
