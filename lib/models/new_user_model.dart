// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class NewUser {
  final String name;

  final String email;

  const NewUser({
    required this.name,
    required this.email
  });

  NewUser copyWith({
    String? name,
    String? email,
  }) {
    return NewUser(
      name: name ?? this.name,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'email': email,
    };
  }

  factory NewUser.fromMap(Map<String, dynamic> map) {
    return NewUser(
      name: map['name'] as String,
      email: map['email'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory NewUser.fromJson(String source) => NewUser.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'NewUser(name: $name, email: $email)';

  @override
  bool operator ==(covariant NewUser other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.email == email;
  }

  @override
  int get hashCode => name.hashCode ^ email.hashCode;
}



