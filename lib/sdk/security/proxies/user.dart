import 'package:dev_assignment_airbnb/config.dart';
import 'package:dev_assignment_airbnb/sdk/security/models/gender.dart';
import 'package:dev_assignment_airbnb/sdk/security/proxies/user_dto.dart';
import 'package:dev_assignment_airbnb/sdk/services/storage_service/storage_service.dart';

class User {
  final StorageService _storageService;

  UserDto _dto;

  String get id => this._dto.id;
  String get firstName => this._dto.firstName;
  String get lastName => this._dto.lastName;
  String get email => this._dto.email;
  DateTime get birthday => this._dto.birthday;
  Gender? get gender => this._dto.gender;

  User(this._dto, this._storageService);

  Future<void> updateProfile(String firstName, String lastName, DateTime birthday, Gender? gender) async {
    final newDto = UserDto(
      this.id,
      firstName.trim(),
      lastName.trim(),
      gender,
      this.email,
      birthday,
      this._dto.password,
    );

    await this._storageService.store(Config.userStore, this.id, newDto.toJson());
    this._dto = newDto;
  }

  Future<void> updateEmail(String email) async {
    email = email.trim().toLowerCase();

    if (email == this.email) return;

    final usersWithEmail = await this._storageService.query(
      Config.userStore,
      [Query("email", email)],
    );

    if (usersWithEmail.isNotEmpty) throw "User with email already exists";

    final newDto = UserDto(
      this.id,
      this.firstName,
      this.lastName,
      this.gender,
      email,
      this.birthday,
      this._dto.password,
    );

    await this._storageService.store(Config.userStore, this.id, newDto.toJson());
    this._dto = newDto;
  }
}
