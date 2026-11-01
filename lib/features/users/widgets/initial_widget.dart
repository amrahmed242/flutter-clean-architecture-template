import 'package:material_ui/material_ui.dart';
import 'package:flutter_mvvm_clean_architecture/features/users/controllers/users_page_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InitialUsersWidget extends ConsumerWidget {
  const InitialUsersWidget({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('initial state'),
        ElevatedButton(
          child: const Text('fetch data'),
          onPressed: () => ref.read(usersPageControllerProvider.notifier).getUsers(),
        ),
        ElevatedButton(
          child: const Text('fetch error'),
          onPressed: () => ref.read(usersPageControllerProvider.notifier).getUsers(fail: true),
        ),
      ],
    );
  }
}
