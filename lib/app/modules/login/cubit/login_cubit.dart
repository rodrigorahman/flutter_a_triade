import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_a_triade/app/services/i_user_service.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttertoast/fluttertoast.dart';
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

  @override
  void onChange(Change<LoginState> change) {
    change.nextState.authFailureOrSuccessOption.map((result) {
      result.fold(
        (failure) {
          final errorMessage = failure.when(
            notFound: () => 'Usuário ou senha inválidos',
            serverError: (error) => error,
            validateError: (validationErrors) => validationErrors.join('\n'),
          );

          Fluttertoast.showToast(
            msg: errorMessage,
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.TOP,
            timeInSecForIosWeb: 2,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0,
          );
        },
        (success) => Modular.to.pushNamedAndRemoveUntil('/', (_) => false),
      );
    });
    super.onChange(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    print('$error, $stackTrace');
    Fluttertoast.showToast(
      msg: 'Erro interno',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 2,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0,
    );
    super.onError(error, stackTrace);
  }

  Future<void> login(String login, String password) async {
    emit(state.copyWith(loading: true, authFailureOrSuccessOption: none()));
    final result = await _service.login(login, password);
    emit(state.copyWith(loading: false, authFailureOrSuccessOption: optionOf(result)));
  }
}
