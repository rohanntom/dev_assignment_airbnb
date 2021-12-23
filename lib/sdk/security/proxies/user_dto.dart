import 'package:dev_assignment_airbnb/sdk/security/models/gender.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_dto.g.dart';

@JsonSerializable()
class UserDto {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final DateTime birthday;
  final String password;
  final Gender? gender;

  UserDto(
    this.id,
    this.firstName,
    this.lastName,
    this.gender,
    this.email,
    this.birthday,
    this.password,
  );

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserDtoToJson(this);
}
