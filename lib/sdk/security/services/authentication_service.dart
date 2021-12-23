import 'package:dev_assignment_airbnb/config.dart';
import 'package:dev_assignment_airbnb/sdk/security/proxies/user.dart';
import 'package:dev_assignment_airbnb/sdk/security/proxies/user_dto.dart';
import 'package:dev_assignment_airbnb/sdk/services/storage_service/storage_service.dart';
import 'package:uuid/uuid.dart';

class AuthenticationService {
  static final AuthenticationService _service = AuthenticationService._internal();

  final _storageService = StorageService();

  User? _authenticatedUser;

  User? get authenticatedUser => this._authenticatedUser;

  factory AuthenticationService() => _service;
  AuthenticationService._internal();

  Future<void> login(String email, String password) async {
    assert(this._authenticatedUser == null);
    email = email.trim().toLowerCase();

    final users = await this._storageService.query(
      Config.userStore,
      [
        Query("email", email),
        Query("password", password),
      ],
    );

    if (users.isEmpty) throw "Incorrect email or password";

    final userDto = UserDto.fromJson(users.first);

    this._authenticatedUser = User(userDto, this._storageService);
  }

  Future<void> signup(String email, String password, String firstName, String lastName, DateTime birthday) async {
    assert(this._authenticatedUser == null);

    email = email.trim().toLowerCase();

    final usersWithEmail = await this._storageService.query(
      Config.userStore,
      [Query("email", email)],
    );

    if (usersWithEmail.isNotEmpty) throw "User with email already exists";

    final newDto = UserDto(
      Uuid().v4(),
      firstName,
      lastName,
      null,
      email,
      birthday,
      password,
    );

    await this._storageService.store(Config.userStore, newDto.id, newDto.toJson());
    await this.login(email, password);
  }

  Future<void> logout() async {
    assert(this._authenticatedUser != null);

    this._authenticatedUser = null;
  }
}
