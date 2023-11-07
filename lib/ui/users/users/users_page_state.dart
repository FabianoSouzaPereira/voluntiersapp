import 'package:equatable/equatable.dart';

abstract class UsersPageState extends Equatable {
  @override
  List<Object> get props => [];
}

class UsersPageStateInitial extends UsersPageState {}

class UsersLoading extends UsersPageState {}

class UsersLoaded extends UsersPageState {}
