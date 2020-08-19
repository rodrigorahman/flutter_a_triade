import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_a_triade/app/services/i_user_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_a_triade/app/exceptions/auth_failure.dart';
import 'package:flutter_a_triade/app/services/user_service.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {

  final IUserService _service;

  LoginCubit(
    this._service,
  ) : super(LoginState.initial());


  Future<void> login(String login, String password) async {
    emit(state.copyWith(loading: true, authFailureOrSuccessOption: none()));
    final result = await _service.login(login, password);
    emit(state.copyWith(loading: false, authFailureOrSuccessOption: optionOf(result)));
  }


}
