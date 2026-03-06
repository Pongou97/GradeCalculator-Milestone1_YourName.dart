import 'package:meta/meta.dart';

@immutable
class User {
  final int id;
  final String name;

  const User(this.id, this.name);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is User && other.id == id && other.name == name;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;

  @override
  String toString() => 'User(id: $id, name: $name)';
}

void main() {
  var user1 = User(1, 'Alice');
  var user2 = User(1, 'Alice');
  var user3 = User(2, 'Bob');

  print(user1 == user2); // true
  print(user1 == user3); // false
  print(user1); // User(id: 1, name: Alice)
}
