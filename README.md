# PT 1 Dart Project

Project Dart untuk tugas Praktikum Teknologi Berkelanjutan (PPB) Semester 7.

## Struktur Project

```
PT_1/
├── bin/
│   └── main.dart           # Entry point aplikasi
├── lib/
│   ├── pt_1_dart_project.dart    # Library utama
│   └── src/
│       ├── calculator.dart       # Class Calculator
│       ├── models/
│       │   └── person.dart      # Model Person
│       └── utils/
│           └── string_utils.dart # Utility functions
├── test/
│   └── pt_1_dart_project_test.dart # Unit tests
├── pubspec.yaml            # Dependencies dan metadata
└── analysis_options.yaml  # Linting rules
```

## Fitur yang Tersedia

### 1. Calculator Class
- Operasi aritmatika dasar (tambah, kurang, kali, bagi)
- Operasi pangkat (power)
- Operasi akar kuadrat (square root)
- Error handling untuk pembagian dengan nol

### 2. Person Model
- Model dengan properties: name, age, email, hobbies
- JSON serialization support
- Utility methods: isAdult, initials, copyWith
- Proper equality dan hashCode

### 3. String Utils
- Kapitalisasi string
- Palindrome checker
- Word count
- Email validation
- Case conversion (camelCase, snake_case)
- String manipulation utilities

## Cara Menjalankan

### 1. Install Dependencies
```bash
dart pub get
```

### 2. Jalankan Aplikasi
```bash
dart run bin/main.dart
```

### 3. Jalankan Tests
```bash
dart test
```

### 4. Generate Code (untuk JSON serialization)
```bash
dart run build_runner build
```

## Dependencies

- **http**: ^1.1.0 - Untuk HTTP requests
- **json_annotation**: ^4.8.1 - Untuk JSON serialization
- **lints**: ^3.0.0 - Dart linting rules
- **test**: ^1.24.0 - Testing framework
- **build_runner**: ^2.4.7 - Code generation
- **json_serializable**: ^6.7.1 - JSON serialization generator

## Development

Untuk development, pastikan VS Code sudah terinstall dengan extensions:
- Dart
- Flutter (jika diperlukan)

Project ini sudah dikonfigurasi dengan:
- ✅ Proper linting rules
- ✅ Testing setup
- ✅ JSON serialization
- ✅ Modular architecture
- ✅ Documentation
- ✅ Error handling

## Contoh Penggunaan

```dart
import 'package:pt_1_dart_project/pt_1_dart_project.dart';

void main() {
  // Calculator
  var calc = Calculator();
  print(calc.add(2, 3)); // Output: 5

  // Person
  var person = Person(
    name: 'John Doe',
    age: 25,
    email: 'john@example.com',
  );
  print(person.isAdult); // Output: true

  // String Utils
  print(StringUtils.capitalize('hello')); // Output: Hello
  print(StringUtils.isPalindrome('racecar')); // Output: true
}
```