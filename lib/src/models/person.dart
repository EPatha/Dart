import 'package:json_annotation/json_annotation.dart';

part 'person.g.dart';

/// A model class representing a person.
@JsonSerializable()
class Person {
  final String name;
  final int age;
  final String email;
  final List<String> hobbies;

  const Person({
    required this.name,
    required this.age,
    required this.email,
    this.hobbies = const [],
  });

  /// Creates a Person instance from a JSON map.
  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  /// Converts this Person instance to a JSON map.
  Map<String, dynamic> toJson() => _$PersonToJson(this);

  /// Returns a string representation of the person.
  @override
  String toString() {
    return 'Person{name: $name, age: $age, email: $email, hobbies: $hobbies}';
  }

  /// Creates a copy of this Person with the given fields replaced.
  Person copyWith({
    String? name,
    int? age,
    String? email,
    List<String>? hobbies,
  }) {
    return Person(
      name: name ?? this.name,
      age: age ?? this.age,
      email: email ?? this.email,
      hobbies: hobbies ?? this.hobbies,
    );
  }

  /// Checks if this person is an adult (age >= 18).
  bool get isAdult => age >= 18;

  /// Gets the person's initials.
  String get initials {
    final nameParts = name.split(' ');
    return nameParts.map((part) => part.isNotEmpty ? part[0].toUpperCase() : '').join();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Person &&
        other.name == name &&
        other.age == age &&
        other.email == email;
  }

  @override
  int get hashCode => Object.hash(name, age, email);
}