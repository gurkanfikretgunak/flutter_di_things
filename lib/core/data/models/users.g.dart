// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      createdAt: json['createdAt'] as int,
      age: json['age'] as int,
      name: json['name'] as String,
      surname: json['surname'] as String,
      avatar: json['avatar'] as String,
      isAdmin: json['isAdmin'] as bool,
      id: json['id'] as int,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'createdAt': instance.createdAt,
      'age': instance.age,
      'name': instance.name,
      'surname': instance.surname,
      'avatar': instance.avatar,
      'isAdmin': instance.isAdmin,
      'id': instance.id,
    };
