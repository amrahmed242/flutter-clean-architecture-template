import 'package:flutter/foundation.dart';

///plain immutable model, value equality is implemented by hand
///instead of depending on equatable or code generation.
@immutable
class User {
  final String id;
  final String title;
  final String firstName;
  final String lastName;
  final String picture;

  const User({
    required this.id,
    required this.title,
    required this.firstName,
    required this.lastName,
    required this.picture,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json['id'] as String? ?? '',
    title: json['title'] as String? ?? '',
    firstName: json['firstName'] as String? ?? '',
    lastName: json['lastName'] as String? ?? '',
    picture: json['picture'] as String? ?? '',
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'firstName': firstName,
    'lastName': lastName,
    'picture': picture,
  };

  User copyWith({
    String? id,
    String? title,
    String? firstName,
    String? lastName,
    String? picture,
  }) => User(
    id: id ?? this.id,
    title: title ?? this.title,
    firstName: firstName ?? this.firstName,
    lastName: lastName ?? this.lastName,
    picture: picture ?? this.picture,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          other.id == id &&
          other.title == title &&
          other.firstName == firstName &&
          other.lastName == lastName &&
          other.picture == picture;

  @override
  int get hashCode => Object.hash(id, title, firstName, lastName, picture);

  @override
  String toString() => 'User(id: $id, firstName: $firstName, lastName: $lastName)';
}
