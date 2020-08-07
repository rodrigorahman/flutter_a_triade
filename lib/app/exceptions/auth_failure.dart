import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
   factory AuthFailure.notFound() = AuthFailureNotFound;
   factory AuthFailure.serverError(String message) = AuthFailureServerError;
   factory AuthFailure.validateError(List<String> errors) = AuthFailureValidateError;
}