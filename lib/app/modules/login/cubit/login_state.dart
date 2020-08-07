part of 'login_cubit.dart';

@freezed
abstract class LoginState with _$LoginState {
  factory LoginState({
    @required bool loading,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
        loading: false,
        authFailureOrSuccessOption: none(),
      );
}
