import 'package:either_dart/either.dart';
import 'package:tdd/core/error/failure.dart';
import 'package:tdd/features/number_trivia/domain/entities/numbar_trivia.dart';

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}
