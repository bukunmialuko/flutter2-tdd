import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd/core/usecase/usecase.dart';
import 'package:tdd/features/number_trivia/domain/entities/numbar_trivia.dart';
import 'package:tdd/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:tdd/features/number_trivia/domain/usecases/get_random_number_trivia.dart';

import 'get_concrete_number_trivia_test.mocks.dart';

@GenerateMocks([NumberTriviaRepository])
void main() {
  final mockNumberTriviaRepository = MockNumberTriviaRepository();
  final GetRandomNumberTrivia usecase =
      GetRandomNumberTrivia(mockNumberTriviaRepository);

  final tNumberTrivia = NumberTrivia(number: 1, text: 'test');

  test(
    'should get trivia from the repository',
    () async {
      // arrange
      when(mockNumberTriviaRepository.getRandomNumberTrivia())
          .thenAnswer((_) async => Right(tNumberTrivia));
      // act
      final result = await usecase(NoParams());
      // assert
      expect(result, Right(tNumberTrivia));
      verify(mockNumberTriviaRepository.getRandomNumberTrivia());
      verifyNoMoreInteractions(mockNumberTriviaRepository);
    },
  );
}
