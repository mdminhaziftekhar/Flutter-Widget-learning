import 'package:flutter/material.dart';
import 'package:flutter_learning/models/new_user_model.dart';
import 'package:flutter_learning/models/user_model.dart';
import 'package:flutter_learning/repository/new_user_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

// Providers
// Provider
// StateProvideer
// StateNotifier & StateNotifierProvider
// ChangeNotifierProvider
// FutureProvider
// StreamProvider

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
              style: const TextStyle(fontSize: 40),
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

    final userSelect = ref.watch(userProvider.select((value) => value
        .name)); //When you want to rerun the entire widget tree , when some value changes

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

final fetchUserProvider = FutureProvider((ref) {
  final newUserRepository = ref.watch(newUserRepositoryProvider);

  return newUserRepository.fetchUserData();
});

class FutureProviderScreen extends ConsumerWidget {
  FutureProviderScreen({super.key});

  final focusnode = FocusNode();
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(fetchUserProvider);

    return user.when(
      data: (data) {
        return Scaffold(
          appBar: AppBar(
            title: Text(data.name),
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
                  data.email,
                  style: const TextStyle(fontSize: 40),
                ),
              ],
            ),
          ),
        );
      },
      error: (error, stackTrace) {
        return Scaffold(
          body: Center(
            child: Text(error.toString()),
          ),
        );
      },
      loading: () {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}

final streamProvider = StreamProvider(
  (ref) async* {
    yield [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  },
);

class StreamProviderScreen extends ConsumerWidget {
  StreamProviderScreen({super.key});

  final focusnode = FocusNode();
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(streamProvider).when(
          data: (data) {
            return Scaffold(
          appBar: AppBar(
            title: Text(data.toString()),
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
                  data.toString(),
                  style: const TextStyle(fontSize: 40),
                ),
              ],
            ),
          ),
        );
          },
          error: (error, stackTrace) {
            return Scaffold(
              body: Center(
                child: Text(
                  error.toString(),
                ),
              ),
            );
          },
          loading: () {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
        );
  }
}
