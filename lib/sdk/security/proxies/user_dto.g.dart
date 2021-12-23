// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDto _$UserDtoFromJson(Map<String, dynamic> json) => UserDto(
      json['id'] as String,
      json['firstName'] as String,
      json['lastName'] as String,
      $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      json['email'] as String,
      DateTime.parse(json['birthday'] as String),
      json['password'] as String,
    );

Map<String, dynamic> _$UserDtoToJson(UserDto instance) => <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'birthday': instance.birthday.toIso8601String(),
      'password': instance.password,
      'gender': _$GenderEnumMap[instance.gender],
    };

const _$GenderEnumMap = {
  Gender.male: 'MALE',
  Gender.female: 'FEMALE',
  Gender.other: 'OTHER',
};
