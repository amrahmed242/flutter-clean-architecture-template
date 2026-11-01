import 'package:material_ui/material_ui.dart';
import 'package:flutter_mvvm_clean_architecture/domain/models/user.dart';

class UsersListWidget extends StatelessWidget {
  final List<User> users;
  const UsersListWidget({super.key, required this.users});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      shrinkWrap: true,
      itemBuilder: (context, index) => Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('user ${users[index].firstName}'),
        ),
      ),
    );
  }
}
