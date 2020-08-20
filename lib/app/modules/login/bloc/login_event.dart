part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginSearch extends LoginEvent {
  final String text;

  LoginSearch(this.text);
  
  @override
  List<Object> get props => [text];
}