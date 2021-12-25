import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User(this.name, this.nickname);

  final String name;
  final String nickname;

  //for equatable functiaonality
  @override
  List<Object> get props => [name, nickname];

  @override
  bool get stringify => true;

  factory User.fromJson(Map<String, dynamic> json) {
    return User(json['name'], json['nickname']);
  }
}
