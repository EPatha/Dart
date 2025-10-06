# Sistem Perhitungan Nilai Mahasiswa - Dart

Program Dart untuk menghitung nilai akhir mahasiswa berdasarkan nilai UTS, Tugas, dan UAS dengan sistem pembobotan dan konversi ke nilai huruf serta predikat.

## 📝 Deskripsi Program

Program ini adalah implementasi sistem perhitungan nilai akademik mahasiswa yang dibuat menggunakan bahasa pemrograman Dart. Program akan menghitung nilai akhir berdasarkan bobot tertentu dan mengkonversinya menjadi nilai huruf dan predikat.

## 👨‍🎓 Data Mahasiswa

- **NIM**: A11.2022.14632
- **Nama**: Ephesians Prismaranatha

## 📊 Sistem Penilaian

### Komponen Nilai dan Bobot:
- **UTS (Ujian Tengah Semester)**: 35%
- **Tugas**: 30%  
- **UAS (Ujian Akhir Semester)**: 35%

### Contoh Nilai Input:
- Nilai UTS: 90
- Nilai Tugas: 95
- Nilai UAS: 95

## 🎯 Konversi Nilai Huruf

| Rentang Nilai | Nilai Huruf | Predikat |
|---------------|-------------|----------|
| ≥ 85          | A           | Apik |
| 80 - 84       | AB          | Apik Baik |
| 70 - 79       | B           | Baik |
| 65 - 69       | BC          | Baik Cukup |
| 56 - 64       | C           | Cukup |
| 40 - 55       | D           | Dableg |
| < 40          | E           | Elek |

## 🔧 Fungsi-Fungsi Program

### 1. `main()`
- Entry point program
- Menginisialisasi data mahasiswa dan nilai
- Memanggil fungsi perhitungan dan pencetakan

### 2. `hitungnilai()`
- Menghitung persentase nilai dari setiap komponen
- Menghitung nilai akhir berdasarkan bobot

### 3. `cetakNilai()`
- Menampilkan semua informasi mahasiswa
- Menampilkan hasil perhitungan nilai
- Menampilkan nilai huruf dan predikat

### 4. `getNilaiHuruf(double na)`
- Mengkonversi nilai numerik ke nilai huruf
- Parameter: nilai akhir (double)
- Return: nilai huruf (String)

### 5. `getPredikat(String nh)`
- Mengkonversi nilai huruf ke predikat
- Parameter: nilai huruf (String)
- Return: predikat (String)

## 💻 Cara Menjalankan Program

### 1. Pastikan Dart SDK terinstall
```bash
dart --version
```

### 2. Jalankan program
```bash
dart run bin/main.dart
```

### 3. Output yang dihasilkan:
```
Nim          : A11.2022.14632
Nama         : Ephesians Prismaranatha
Nilai UTS    : 90.0, 35%  : 31.5
Nilai Tugas  : 95.0, 30%  : 28.5
Nilai UAS    : 95.0, 35%  : 33.25
Nilai Akhir  : 93.25
Nilai Huruf  : A
Predikat     : Apik
```

## 📁 Struktur File

```
PT_1/
├── bin/
│   └── main.dart          # Program utama perhitungan nilai
├── pubspec.yaml           # Konfigurasi project Dart
└── README.md             # Dokumentasi ini
```

## 🧮 Rumus Perhitungan

**Nilai Akhir = (UTS × 0.35) + (Tugas × 0.30) + (UAS × 0.35)**

Dengan data contoh:
- UTS: 90 × 0.35 = 31.5
- Tugas: 95 × 0.30 = 28.5  
- UAS: 95 × 0.35 = 33.25
- **Nilai Akhir: 93.25**

## 🎓 Implementasi

Program ini mengimplementasikan konsep-konsep dasar pemrograman Dart:
- ✅ Variabel global
- ✅ Tipe data String dan double
- ✅ Function dengan parameter dan return value
- ✅ Conditional statements (if-else)
- ✅ Switch-case statement
- ✅ String interpolation
- ✅ Operasi aritmatika

## 📚 Mata Kuliah

**Praktikum Pemrograman Berkelanjutan (PPB)**  
**Semester 7 - Universitas Dian Nuswantoro**

## 👤 Pengembang

- **Nama**: Ephesians Prismaranatha
- **NIM**: A11.2022.14632
- **GitHub**: [@EPatha](https://github.com/EPatha)

---

*Program ini dibuat sebagai tugas praktikum untuk mendemonstrasikan implementasi sistem perhitungan nilai akademik menggunakan bahasa pemrograman Dart.*