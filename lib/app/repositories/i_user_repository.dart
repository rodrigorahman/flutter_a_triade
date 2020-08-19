import 'package:dartz/dartz.dart';
import 'package:flutter_a_triade/app/exceptions/auth_failure.dart';

abstract class IUserRepository {
  Either<AuthFailure, String> login(String login, String password);
}