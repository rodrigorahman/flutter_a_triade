// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

// ignore: unused_element
  AuthFailureNotFound notFound() {
    return AuthFailureNotFound();
  }

// ignore: unused_element
  AuthFailureServerError serverError(String message) {
    return AuthFailureServerError(
      message,
    );
  }

// ignore: unused_element
  AuthFailureValidateError validateError(List<String> errors) {
    return AuthFailureValidateError(
      errors,
    );
  }
}

// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

mixin _$AuthFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result notFound(),
    @required Result serverError(String message),
    @required Result validateError(List<String> errors),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result notFound(),
    Result serverError(String message),
    Result validateError(List<String> errors),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result notFound(AuthFailureNotFound value),
    @required Result serverError(AuthFailureServerError value),
    @required Result validateError(AuthFailureValidateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result notFound(AuthFailureNotFound value),
    Result serverError(AuthFailureServerError value),
    Result validateError(AuthFailureValidateError value),
    @required Result orElse(),
  });
}

abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

abstract class $AuthFailureNotFoundCopyWith<$Res> {
  factory $AuthFailureNotFoundCopyWith(
          AuthFailureNotFound value, $Res Function(AuthFailureNotFound) then) =
      _$AuthFailureNotFoundCopyWithImpl<$Res>;
}

class _$AuthFailureNotFoundCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $AuthFailureNotFoundCopyWith<$Res> {
  _$AuthFailureNotFoundCopyWithImpl(
      AuthFailureNotFound _value, $Res Function(AuthFailureNotFound) _then)
      : super(_value, (v) => _then(v as AuthFailureNotFound));

  @override
  AuthFailureNotFound get _value => super._value as AuthFailureNotFound;
}

class _$AuthFailureNotFound implements AuthFailureNotFound {
  _$AuthFailureNotFound();

  @override
  String toString() {
    return 'AuthFailure.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthFailureNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result notFound(),
    @required Result serverError(String message),
    @required Result validateError(List<String> errors),
  }) {
    assert(notFound != null);
    assert(serverError != null);
    assert(validateError != null);
    return notFound();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result notFound(),
    Result serverError(String message),
    Result validateError(List<String> errors),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result notFound(AuthFailureNotFound value),
    @required Result serverError(AuthFailureServerError value),
    @required Result validateError(AuthFailureValidateError value),
  }) {
    assert(notFound != null);
    assert(serverError != null);
    assert(validateError != null);
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result notFound(AuthFailureNotFound value),
    Result serverError(AuthFailureServerError value),
    Result validateError(AuthFailureValidateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class AuthFailureNotFound implements AuthFailure {
  factory AuthFailureNotFound() = _$AuthFailureNotFound;
}

abstract class $AuthFailureServerErrorCopyWith<$Res> {
  factory $AuthFailureServerErrorCopyWith(AuthFailureServerError value,
          $Res Function(AuthFailureServerError) then) =
      _$AuthFailureServerErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$AuthFailureServerErrorCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $AuthFailureServerErrorCopyWith<$Res> {
  _$AuthFailureServerErrorCopyWithImpl(AuthFailureServerError _value,
      $Res Function(AuthFailureServerError) _then)
      : super(_value, (v) => _then(v as AuthFailureServerError));

  @override
  AuthFailureServerError get _value => super._value as AuthFailureServerError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(AuthFailureServerError(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$AuthFailureServerError implements AuthFailureServerError {
  _$AuthFailureServerError(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthFailure.serverError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthFailureServerError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $AuthFailureServerErrorCopyWith<AuthFailureServerError> get copyWith =>
      _$AuthFailureServerErrorCopyWithImpl<AuthFailureServerError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result notFound(),
    @required Result serverError(String message),
    @required Result validateError(List<String> errors),
  }) {
    assert(notFound != null);
    assert(serverError != null);
    assert(validateError != null);
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result notFound(),
    Result serverError(String message),
    Result validateError(List<String> errors),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result notFound(AuthFailureNotFound value),
    @required Result serverError(AuthFailureServerError value),
    @required Result validateError(AuthFailureValidateError value),
  }) {
    assert(notFound != null);
    assert(serverError != null);
    assert(validateError != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result notFound(AuthFailureNotFound value),
    Result serverError(AuthFailureServerError value),
    Result validateError(AuthFailureValidateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class AuthFailureServerError implements AuthFailure {
  factory AuthFailureServerError(String message) = _$AuthFailureServerError;

  String get message;
  $AuthFailureServerErrorCopyWith<AuthFailureServerError> get copyWith;
}

abstract class $AuthFailureValidateErrorCopyWith<$Res> {
  factory $AuthFailureValidateErrorCopyWith(AuthFailureValidateError value,
          $Res Function(AuthFailureValidateError) then) =
      _$AuthFailureValidateErrorCopyWithImpl<$Res>;
  $Res call({List<String> errors});
}

class _$AuthFailureValidateErrorCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $AuthFailureValidateErrorCopyWith<$Res> {
  _$AuthFailureValidateErrorCopyWithImpl(AuthFailureValidateError _value,
      $Res Function(AuthFailureValidateError) _then)
      : super(_value, (v) => _then(v as AuthFailureValidateError));

  @override
  AuthFailureValidateError get _value =>
      super._value as AuthFailureValidateError;

  @override
  $Res call({
    Object errors = freezed,
  }) {
    return _then(AuthFailureValidateError(
      errors == freezed ? _value.errors : errors as List<String>,
    ));
  }
}

class _$AuthFailureValidateError implements AuthFailureValidateError {
  _$AuthFailureValidateError(this.errors) : assert(errors != null);

  @override
  final List<String> errors;

  @override
  String toString() {
    return 'AuthFailure.validateError(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthFailureValidateError &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errors);

  @override
  $AuthFailureValidateErrorCopyWith<AuthFailureValidateError> get copyWith =>
      _$AuthFailureValidateErrorCopyWithImpl<AuthFailureValidateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result notFound(),
    @required Result serverError(String message),
    @required Result validateError(List<String> errors),
  }) {
    assert(notFound != null);
    assert(serverError != null);
    assert(validateError != null);
    return validateError(errors);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result notFound(),
    Result serverError(String message),
    Result validateError(List<String> errors),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (validateError != null) {
      return validateError(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result notFound(AuthFailureNotFound value),
    @required Result serverError(AuthFailureServerError value),
    @required Result validateError(AuthFailureValidateError value),
  }) {
    assert(notFound != null);
    assert(serverError != null);
    assert(validateError != null);
    return validateError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result notFound(AuthFailureNotFound value),
    Result serverError(AuthFailureServerError value),
    Result validateError(AuthFailureValidateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (validateError != null) {
      return validateError(this);
    }
    return orElse();
  }
}

abstract class AuthFailureValidateError implements AuthFailure {
  factory AuthFailureValidateError(List<String> errors) =
      _$AuthFailureValidateError;

  List<String> get errors;
  $AuthFailureValidateErrorCopyWith<AuthFailureValidateError> get copyWith;
}
