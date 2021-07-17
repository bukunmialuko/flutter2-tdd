import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';
import 'package:tdd/core/error/failure.dart';
import 'package:tdd/core/usecase/usecase.dart';
import 'package:tdd/features/number_trivia/domain/entities/numbar_trivia.dart';
import 'package:tdd/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class GetConcreteNumberTrivia implements UseCase<NumberTrivia, Params> {
  final NumberTriviaRepository repository;
  GetConcreteNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(Params params) async {
    return await repository.getConcreteNumberTrivia(params.number);
  }
}

class Params extends Equatable {
  final int number;

  Params({required this.number});

  @override
  List<Object> get props => [number];
}
