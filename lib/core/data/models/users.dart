import 'package:json_annotation/json_annotation.dart';

part 'users.g.dart';

@JsonSerializable()
class User {
  final int createdAt;
  final int age;
  final String name;
  final String surname;
  final String avatar;
  final bool isAdmin;
  final int id;

  User({
    required this.createdAt,
    required this.age,
    required this.name,
    required this.surname,
    required this.avatar,
    required this.isAdmin,
    required this.id,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
