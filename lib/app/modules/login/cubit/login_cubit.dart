import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_a_triade/app/exceptions/auth_failure.dart';
import 'package:flutter_a_triade/app/services/user_service.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {

  final UserService _service;

  LoginCubit(
    this._service,
  ) : super(LoginState.initial());



}
