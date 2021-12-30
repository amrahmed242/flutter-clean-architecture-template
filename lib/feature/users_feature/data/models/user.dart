import 'package:equatable/equatable.dart';

class User extends Equatable {
  late String id;
  late String title;
  late String firstName;
  late String lastName;
  late String picture;

  //for equatable functiaonality
  @override
  List<Object> get props => [firstName, lastName, id];

  @override
  bool get stringify => true;

  User(
      {required this.id,
      required this.title,
      required this.firstName,
      required this.lastName,
      required this.picture});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    picture = json['picture'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['title'] = title;
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['picture'] = picture;
    return data;
  }
}
