import 'package:dartz/dartz.dart';
import 'package:flutter_a_triade/app/exceptions/auth_failure.dart';
import 'package:flutter_a_triade/app/repositories/i_user_repository.dart';
import 'package:flutter_a_triade/app/services/i_user_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserService implements IUserService {
  final IUserRepository _repository;

  UserService(
    this._repository,
  );

  @override
  Future<Either<AuthFailure, Unit>> login(String login, String password) async {
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
      
      final result = _repository.login(login, password);
      return result.fold(
        (l) => left(l),
        (r) async {
          final sp = await SharedPreferences.getInstance();
          sp.setString('accessToken', r);
          return right(unit);
        },
      );
    }
  }
}
