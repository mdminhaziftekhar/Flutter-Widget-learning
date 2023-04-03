import 'package:flutter_learning/models/new_user_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final newUserRepositoryProvider = Provider((ref) => NewUserRepository());

class NewUserRepository {
  Future<NewUser> fetchUserData() {
    const url = 'https://jsonplaceholder.typicode.com/users/1';
    return http
        .get(Uri.parse(url))
        .then((value) => NewUser.fromJson(value.body));
  }
}
