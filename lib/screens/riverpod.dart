import 'package:flutter/material.dart';
import 'package:flutter_learning/models/user_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Providers
// Provider
// StateProvideer
// StateNotifier & StateNotifierProvider
// ChangeNotifierProvider
 

final nameProvider = StateProvider<String?>((ref) => null);

class RiverpodScreen extends ConsumerWidget {
  RiverpodScreen({super.key});

  final focusnode = FocusNode();
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(nameProvider) ?? '';

    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: controller,
              focusNode: focusnode,
              onChanged: (value) {
                ref.read(nameProvider.notifier).update((state) => value);
              },
            ),
            Text(
              name,
              style: TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}

final userProvider = StateNotifierProvider<UserNotifier, User>(
  (ref) => UserNotifier(),
);

class StateNotifierScreen extends ConsumerWidget {
  StateNotifierScreen({super.key});

  final focusnode = FocusNode();
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);

    final userSelect = ref.watch(userProvider.select((value) => value.name)); //When you want to rerun the entire widget tree , when some value changes

    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: controller,
              focusNode: focusnode,
              onChanged: (value) {
                ref.read(userProvider.notifier).updateName(value);
              },
            ),
            Text(
              user.name,
              style: const TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}
