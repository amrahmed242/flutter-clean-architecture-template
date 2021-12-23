import 'package:equatable/equatable.dart';

class Person extends Equatable {
  const Person(this.name, this.nickname);

  final String name;
  final String nickname;

  //for equatable functiaonality
  @override
  List<Object> get props => [name, nickname];

  @override
  bool get stringify => true;

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(json['name'], json['nickname']);
  }
}
