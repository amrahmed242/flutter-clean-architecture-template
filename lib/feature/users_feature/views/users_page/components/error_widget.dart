import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UsersErrorWidget extends StatelessWidget {
  final WidgetRef? ref;
  final dynamic provider;
  const UsersErrorWidget({Key? key, this.ref, this.provider}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Error occured"),
        if (ref != null && provider != null)
          TextButton(
            child: const Text('try again'),
            onPressed: () => ref?.refresh(provider),
          ),
      ],
    );
  }
}
