part of 'login_cubit.dart';

@freezed
abstract class LoginState with _$LoginState {
  factory LoginState({
    @required String login,
    @required String password,
    @required bool loading,
    // Unit ' como se fosse unico um valor vazio'
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
        login: '',
        password: '',
        loading: false,
        authFailureOrSuccessOption: none(),
      );
}
