import 'package:flutter/material.dart';
import 'package:flutter_mvvm_clean_architecture/feature/users_feature/data/models/user.dart';

class UsersListWidget extends StatelessWidget {
  final List<User> users;
  const UsersListWidget({Key? key, required this.users}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) => Center(child: Text('user ${users[index].name}')),
    );
  }
}
