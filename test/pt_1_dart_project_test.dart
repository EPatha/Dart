import 'package:test/test.dart';
import 'package:pt_1_dart_project/pt_1_dart_project.dart';

void main() {
  group('Calculator Tests', () {
    late Calculator calculator;

    setUp(() {
      calculator = Calculator();
    });

    test('addition should return correct result', () {
      expect(calculator.add(2, 3), equals(5));
      expect(calculator.add(-1, 1), equals(0));
      expect(calculator.add(0, 0), equals(0));
    });

    test('subtraction should return correct result', () {
      expect(calculator.subtract(5, 3), equals(2));
      expect(calculator.subtract(1, 1), equals(0));
      expect(calculator.subtract(0, 5), equals(-5));
    });

    test('multiplication should return correct result', () {
      expect(calculator.multiply(3, 4), equals(12));
      expect(calculator.multiply(0, 5), equals(0));
      expect(calculator.multiply(-2, 3), equals(-6));
    });

    test('division should return correct result', () {
      expect(calculator.divide(10, 2), equals(5));
      expect(calculator.divide(7, 2), equals(3.5));
    });

    test('division by zero should throw ArgumentError', () {
      expect(() => calculator.divide(5, 0), throwsArgumentError);
    });

    test('power should return correct result', () {
      expect(calculator.power(2, 3), equals(8));
      expect(calculator.power(5, 0), equals(1));
      expect(calculator.power(10, 1), equals(10));
    });

    test('square root should return correct result', () {
      expect(calculator.sqrt(4), closeTo(2, 0.001));
      expect(calculator.sqrt(9), closeTo(3, 0.001));
      expect(calculator.sqrt(0), equals(0));
      expect(calculator.sqrt(1), equals(1));
    });

    test('square root of negative number should throw ArgumentError', () {
      expect(() => calculator.sqrt(-1), throwsArgumentError);
    });
  });

  group('StringUtils Tests', () {
    test('capitalize should work correctly', () {
      expect(StringUtils.capitalize('hello'), equals('Hello'));
      expect(StringUtils.capitalize('WORLD'), equals('World'));
      expect(StringUtils.capitalize(''), equals(''));
    });

    test('capitalizeWords should work correctly', () {
      expect(StringUtils.capitalizeWords('hello world'), equals('Hello World'));
      expect(StringUtils.capitalizeWords('dart programming'), equals('Dart Programming'));
    });

    test('reverse should work correctly', () {
      expect(StringUtils.reverse('hello'), equals('olleh'));
      expect(StringUtils.reverse('dart'), equals('trad'));
      expect(StringUtils.reverse(''), equals(''));
    });

    test('isPalindrome should work correctly', () {
      expect(StringUtils.isPalindrome('racecar'), isTrue);
      expect(StringUtils.isPalindrome('hello'), isFalse);
      expect(StringUtils.isPalindrome('A man a plan a canal Panama'), isTrue);
    });

    test('wordCount should work correctly', () {
      expect(StringUtils.wordCount('hello world'), equals(2));
      expect(StringUtils.wordCount(''), equals(0));
      expect(StringUtils.wordCount('   hello   world   '), equals(2));
    });

    test('isEmail should work correctly', () {
      expect(StringUtils.isEmail('test@example.com'), isTrue);
      expect(StringUtils.isEmail('invalid-email'), isFalse);
      expect(StringUtils.isEmail('user@domain'), isFalse);
    });
  });

  group('Person Tests', () {
    test('Person should be created correctly', () {
      final person = Person(
        name: 'John Doe',
        age: 25,
        email: 'john@example.com',
        hobbies: ['reading', 'coding'],
      );

      expect(person.name, equals('John Doe'));
      expect(person.age, equals(25));
      expect(person.email, equals('john@example.com'));
      expect(person.hobbies, equals(['reading', 'coding']));
    });

    test('isAdult should work correctly', () {
      final adult = Person(name: 'Adult', age: 25, email: 'adult@test.com');
      final minor = Person(name: 'Minor', age: 16, email: 'minor@test.com');

      expect(adult.isAdult, isTrue);
      expect(minor.isAdult, isFalse);
    });

    test('initials should work correctly', () {
      final person = Person(name: 'John Doe', age: 25, email: 'john@test.com');
      expect(person.initials, equals('JD'));
    });

    test('copyWith should work correctly', () {
      final original = Person(name: 'John', age: 25, email: 'john@test.com');
      final copied = original.copyWith(age: 26);

      expect(copied.name, equals('John'));
      expect(copied.age, equals(26));
      expect(copied.email, equals('john@test.com'));
    });
  });
}