import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:trivia_numbers_clean_arch/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:trivia_numbers_clean_arch/features/number_trivia/domain/entities/number_trivia.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tNumberTriviaModel = NumberTriviaModel(number: 1, text: 'Test Text');

  test('should be a subclass of NumberTrivia entity', () async {
    expect(tNumberTriviaModel, isA<NumberTrivia>());
  });

  group('fromJson', () {
    test('should return a valid model when the JSON number is an integer',
        () async {
      //arrange
      final Map<String, dynamic> jsonMap = jsonDecode(fixture('trivia.json'));
      //act
      final result = NumberTriviaModel.fromJson(jsonMap);
      //assert
      expect(result, tNumberTriviaModel);
    });
    test(
        'should return a valid model when the JSON number is regarded as a double',
        () async {
      //arrange
      final Map<String, dynamic> jsonMap =
          jsonDecode(fixture('trivia_double.json'));
      //act
      final result = NumberTriviaModel.fromJson(jsonMap);
      //assert
      expect(result, tNumberTriviaModel);
    });
  });
}
