import 'dart:math';

// ================== TUGAS 1 ==================
void tampilkanDataPribadi() {
  String nim = "A11.2022.14632";
  String nama = "Ephesians Prismaranatha";
  String alamat = "Jl. Pahlawan No. 10";
  String kota = "Semarang";
  String kodePos = "50123";
  String telp = "024-7654321";
  String hp = "081234567890";
  String email = "ephesians@example.com";

  print("=== Data Pribadi ===");
  print("NIM       : $nim");
  print("Nama      : $nama");
  print("Alamat    : $alamat");
  print("Kota      : $kota");
  print("Kode Pos  : $kodePos");
  print("Telp      : $telp");
  print("HP        : $hp");
  print("Email     : $email");
}

// ================== TUGAS 2 ==================
class Persegi {
  double sisi;
  Persegi(this.sisi);

  double luas() => sisi * sisi;
  double keliling() => 4 * sisi;
}

class Lingkaran {
  double jariJari;
  Lingkaran(this.jariJari);

  double luas() => pi * pow(jariJari, 2);
  double keliling() => 2 * pi * jariJari;
}

class Kubus {
  double sisi;
  Kubus(this.sisi);

  double volume() => pow(sisi, 3).toDouble();
  double luasPermukaan() => 6 * pow(sisi, 2).toDouble();
}

// ================== TUGAS 3 ==================
class Mahasiswa {
  String nim;
  String nama;
  double nilaiUts;
  double nilaiTugas;
  double nilaiUas;
  double nilaiAkhir = 0;
  String nHuruf = "";
  String predikat = "";

  Mahasiswa(this.nim, this.nama, this.nilaiUts, this.nilaiTugas, this.nilaiUas);

  void hitungNilai() {
    double pNilaiUts = 0.30 * nilaiUts;
    double pNilaiTugas = 0.35 * nilaiTugas;
    double pNilaiUas = 0.35 * nilaiUas;

    nilaiAkhir = pNilaiUts + pNilaiTugas + pNilaiUas;
    getNilaiHuruf();
    getPredikat();
  }

  void getNilaiHuruf() {
    if (nilaiAkhir >= 85) {
      nHuruf = "A";
    } else if (nilaiAkhir >= 75) {
      nHuruf = "B";
    } else if (nilaiAkhir >= 65) {
      nHuruf = "C";
    } else if (nilaiAkhir >= 50) {
      nHuruf = "D";
    } else {
      nHuruf = "E";
    }
  }

  void getPredikat() {
    switch (nHuruf) {
      case "A":
        predikat = "Sangat Baik";
        break;
      case "B":
        predikat = "Baik";
        break;
      case "C":
        predikat = "Cukup";
        break;
      case "D":
        predikat = "Kurang";
        break;
      default:
        predikat = "Sangat Kurang";
    }
  }

  void cetakNilai() {
    print("\n=== Data Nilai Mahasiswa ===");
    print("NIM       : $nim");
    print("Nama      : $nama");
    print("Nilai UTS : $nilaiUts");
    print("Nilai Tugas : $nilaiTugas");
    print("Nilai UAS : $nilaiUas");
    print("Nilai Akhir : $nilaiAkhir");
    print("Nilai Huruf : $nHuruf");
    print("Predikat : $predikat");
  }
}

// ================== MAIN ==================
void main() {
  // Tugas 1
  tampilkanDataPribadi();

  // Tugas 2
  print("\n=== Menghitung Luas dan Keliling ===");
  var persegi = Persegi(5);
  print("Persegi -> Luas: ${persegi.luas()}, Keliling: ${persegi.keliling()}");

  var lingkaran = Lingkaran(7);
  print("Lingkaran -> Luas: ${lingkaran.luas()}, Keliling: ${lingkaran.keliling()}");

  var kubus = Kubus(4);
  print("Kubus -> Volume: ${kubus.volume()}, Luas Permukaan: ${kubus.luasPermukaan()}");

  // Tugas 3
  var mhs = Mahasiswa("A11.2022.12345", "Budi Santoso", 80, 85, 90);
  mhs.hitungNilai();
  mhs.cetakNilai();
}
