import 'package:flutter/foundation.dart';
import 'package:material_ui/material_ui.dart';
import 'package:flutter_mvvm_clean_architecture/features/users/pages/users_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

///single app router, exposed as a provider so redirects can read other
///providers (e.g. auth state) through `ref`.
final routerProvider = Provider<GoRouter>((ref) {
  final router = GoRouter(
    initialLocation: UsersPage.routePath,
    debugLogDiagnostics: kDebugMode,
    routes: [
      GoRoute(
        path: UsersPage.routePath,
        name: UsersPage.routeName,
        builder: (context, state) => const UsersPage(),
        // nested routes resolve to /users/:id
        // routes: [
        //   GoRoute(
        //     path: ':id',
        //     name: UserDetailsPage.routeName,
        //     builder: (context, state) => UserDetailsPage(id: state.pathParameters['id']!),
        //   ),
        // ],
      ),
    ],
    // redirect: (context, state) {
    //   final loggedIn = ref.read(authProvider).isLoggedIn;
    //   if (!loggedIn) return '/login?from=${state.uri}';
    //   return null;
    // },
    errorBuilder: (context, state) =>
        Scaffold(body: Center(child: Text('Page not found: ${state.uri}'))),
  );
  ref.onDispose(router.dispose);
  return router;
});
