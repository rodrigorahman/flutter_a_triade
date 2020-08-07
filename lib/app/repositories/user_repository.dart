import 'package:dartz/dartz.dart';
import 'package:flutter_a_triade/app/exceptions/auth_failure.dart';
import 'package:uuid/uuid.dart';

class UserRepository {

  Either<AuthFailure, String> login(String login, String password){
    
    if(login == 'rodrigorahman@gmail.com' && password == 'TDC2020'){
      var uuid = Uuid();
      return right(uuid.v1());
    }

    if(login == 'rodrigorahman@gmail.com' && password == 'erro'){
      return left(AuthFailure.notFound());
    }

    return left(AuthFailure.notFound());

  }

}