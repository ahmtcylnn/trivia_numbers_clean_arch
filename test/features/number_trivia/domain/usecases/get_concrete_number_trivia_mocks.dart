// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i3;
import 'package:trivia_numbers_clean_arch/core/error/failures.dart' as _i5;
import 'package:trivia_numbers_clean_arch/features/number_trivia/domain/entities/number_trivia.dart'
    as _i6;
import 'package:trivia_numbers_clean_arch/features/number_trivia/domain/repositories/number_trivia_repository.dart'
    as _i2;
import 'package:dartz/dartz.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;

class MockNumberTriviaRepository extends _i1.Mock
    implements _i2.NumberTriviaRepository {
  MockNumberTriviaRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<_i4.Either<_i5.Failure, _i6.NumberTrivia>>?
      getConcreteNumberTrivia(int? number) => (super.noSuchMethod(
              Invocation.method(#getConcreteNumberTrivia, [number]))
          as _i3.Future<_i4.Either<_i5.Failure, _i6.NumberTrivia>>?);
  @override
  String toString() => super.toString();
}
