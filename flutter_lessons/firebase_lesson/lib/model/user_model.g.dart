// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
  id: json['id'] as String?,
  name: json['name'] as String?,
  surname: json['surname'] as String?,
  phoneNumber: json['phoneNumber'] as String?,
  email: json['email'] as String?,
);

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'surname': instance.surname,
  'phoneNumber': instance.phoneNumber,
  'email': instance.email,
};
