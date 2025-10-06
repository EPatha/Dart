/// Utility functions for string manipulation.
class StringUtils {
  /// Capitalizes the first letter of a string.
  static String capitalize(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1).toLowerCase();
  }

  /// Capitalizes the first letter of each word in a string.
  static String capitalizeWords(String text) {
    if (text.isEmpty) return text;
    return text.split(' ')
        .map((word) => capitalize(word))
        .join(' ');
  }

  /// Reverses a string.
  static String reverse(String text) {
    return text.split('').reversed.join('');
  }

  /// Checks if a string is a palindrome.
  static bool isPalindrome(String text) {
    final cleanText = text.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
    return cleanText == reverse(cleanText);
  }

  /// Counts the number of words in a string.
  static int wordCount(String text) {
    if (text.trim().isEmpty) return 0;
    return text.trim().split(RegExp(r'\s+')).length;
  }

  /// Removes extra whitespace from a string.
  static String cleanWhitespace(String text) {
    return text.trim().replaceAll(RegExp(r'\s+'), ' ');
  }

  /// Truncates a string to a specified length with ellipsis.
  static String truncate(String text, int maxLength, {String suffix = '...'}) {
    if (text.length <= maxLength) return text;
    return text.substring(0, maxLength - suffix.length) + suffix;
  }

  /// Converts a string to camelCase.
  static String toCamelCase(String text) {
    final words = text.split(RegExp(r'[^a-zA-Z0-9]'));
    if (words.isEmpty) return '';
    
    final first = words.first.toLowerCase();
    final rest = words.skip(1).map((word) => capitalize(word));
    
    return [first, ...rest].join('');
  }

  /// Converts a string to snake_case.
  static String toSnakeCase(String text) {
    return text
        .replaceAll(RegExp(r'([A-Z])'), '_\$1')
        .toLowerCase()
        .replaceAll(RegExp(r'[^a-z0-9_]'), '_')
        .replaceAll(RegExp(r'_+'), '_')
        .replaceAll(RegExp(r'^_|_$'), '');
  }

  /// Checks if a string contains only digits.
  static bool isNumeric(String text) {
    return RegExp(r'^\d+$').hasMatch(text);
  }

  /// Checks if a string is a valid email format.
  static bool isEmail(String text) {
    return RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(text);
  }
}