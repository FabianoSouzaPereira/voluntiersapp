import 'package:equatable/equatable.dart';
import 'package:voluntiersapp/domain/users.dart';

abstract class UsersPageState extends Equatable {
  @override
  List<Object> get props => [];
}

class UsersPageStateInitial extends UsersPageState {}

class UsersPageLoading extends UsersPageState {}

class UsersPageLoaded extends UsersPageState {
  final List<Users> listUsers;
  UsersPageLoaded({
    required this.listUsers,
  });

  @override
  List<Object> get props => [listUsers];
}
