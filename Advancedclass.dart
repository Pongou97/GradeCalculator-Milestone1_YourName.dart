import 'package:meta/meta.dart';

@immutable
class User {
  final int id;
  final String name;

  const User(this.id, this.name);

  User copyWith({int? id, String? name}) {
    return User(id ?? this.id, name ?? this.name);
  }

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

// Inheritance example
abstract class Animal {
  void speak();
}

class Dog extends Animal {
  @override
  void speak() => print('Woof!');
}

void main() {
  var user1 = User(1, 'Alice');
  var user2 = user1.copyWith(name: 'Bob');
  print(user1);
  print(user2);

  Animal a = Dog();
  a.speak();
}
