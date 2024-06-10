import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoesly/presentation/provider/auth_provider.dart';
import 'package:shoesly/presentation/screens/home/home_screen.dart';
import 'package:shoesly/presentation/screens/login_screen.dart';

class Wrapper extends ConsumerWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // watch the StreamProvider and get an AsyncValue<User?>
    final authStateAsync = ref.watch(authStateChangesProvider);
    // use pattern matching to map the state to the UI
    return authStateAsync.when(
      data: (user) => user != null ? const HomeScreen() : const LoginScreen(),
      loading: () => const CircularProgressIndicator(),
      error: (err, stack) => Text('Error: $err'),
    );
  }
}
