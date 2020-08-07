part of 'auth_cubit.dart';

@freezed
abstract class AuthState with _$AuthState {
   const factory AuthState.initial() = AuthInitial;
   const factory AuthState.authenticated() = Authenticated;
   const factory AuthState.unauthenticated() = AuthUnauthenticated;
}