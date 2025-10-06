/// A simple calculator class for basic arithmetic operations.
class Calculator {
  /// Adds two numbers and returns the result.
  double add(double a, double b) {
    return a + b;
  }

  /// Subtracts the second number from the first and returns the result.
  double subtract(double a, double b) {
    return a - b;
  }

  /// Multiplies two numbers and returns the result.
  double multiply(double a, double b) {
    return a * b;
  }

  /// Divides the first number by the second and returns the result.
  /// Throws an [ArgumentError] if the divisor is zero.
  double divide(double a, double b) {
    if (b == 0) {
      throw ArgumentError('Cannot divide by zero');
    }
    return a / b;
  }

  /// Calculates the power of a number.
  double power(double base, double exponent) {
    double result = 1;
    for (int i = 0; i < exponent; i++) {
      result *= base;
    }
    return result;
  }

  /// Calculates the square root of a number.
  double sqrt(double number) {
    if (number < 0) {
      throw ArgumentError('Cannot calculate square root of negative number');
    }
    
    if (number == 0 || number == 1) return number;
    
    double guess = number / 2;
    double previousGuess;
    
    do {
      previousGuess = guess;
      guess = (guess + number / guess) / 2;
    } while ((guess - previousGuess).abs() > 0.0001);
    
    return guess;
  }
}