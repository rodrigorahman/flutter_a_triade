import 'package:dartz/dartz.dart';
import 'package:flutter_a_triade/app/exceptions/auth_failure.dart';

abstract class IUserService {
  Future<Either<AuthFailure, Unit>> login(String login, String password);
}