import 'package:material_ui/material_ui.dart';
import 'package:flutter_mvvm_clean_architecture/core/error/failure.dart';
import 'package:flutter_mvvm_clean_architecture/features/users/controllers/users_page_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UsersErrorWidget extends ConsumerWidget {
  final Failure? failure;
  const UsersErrorWidget({super.key, this.failure});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(failure == null ? 'Error occurred' : 'Error: ${failure!.message}'),
        ElevatedButton(
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [Icon(Icons.refresh), Text('try again')],
          ),
          onPressed: () => ref.read(usersPageControllerProvider.notifier).getUsers(),
        ),
      ],
    );
  }
}
