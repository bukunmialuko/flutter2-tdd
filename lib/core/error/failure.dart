import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object> get props => [];
}

// FAILURE TYPES, MAPS TO EXCEPTIONS

class ServerFailure extends Failure {}

class CacheFailure extends Failure {}
