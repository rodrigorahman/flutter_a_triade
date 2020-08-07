import 'package:dartz/dartz.dart';
import 'package:flutter_a_triade/app/exceptions/auth_failure.dart';
import 'package:flutter_a_triade/app/repositories/user_repository.dart';

class UserService {
  final UserRepository _repository;

  UserService(
    this._repository,
  );

  Either<AuthFailure, String> login(String login, String password) {
    List<String> validatorErrors = [];
    
    if (login == '') {
      validatorErrors.add('Login obrigatório');
    }

    if (password == '') {
      validatorErrors.add('Password obrigatório');
    }

    if (validatorErrors.isNotEmpty) {
      return left(AuthFailure.validateError(validatorErrors));
    } else {
      return _repository.login(login, password);
    }
  }
}
