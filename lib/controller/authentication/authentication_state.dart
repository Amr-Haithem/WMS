// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'authentication_cubit.dart';

//@immutable
abstract class AuthenticationState {}

class AuthenticationInitial extends AuthenticationState {}

class Authenticated extends AuthenticationState {
  final Donator? donator;
  final Admin? admin;
  final bool isAdmin;
  Authenticated(
      {required this.donator, required this.admin, required this.isAdmin});
}

class Authenticating extends AuthenticationState {}

class AuthenticationError extends AuthenticationState {}
