import 'package:dartz/dartz.dart';
import 'package:trivia_numbers_clean_arch/core/error/failures.dart';
import 'package:trivia_numbers_clean_arch/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:trivia_numbers_clean_arch/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class GetConcreteNumberTrivia {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  Future<Either<Failure?, NumberTrivia>> execute({
    required int number,
  }) async {
    return await repository.getConcreteNumberTrivia(number);
  }
}
