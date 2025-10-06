String nim = '', nama = '', nHuruf = '', predikat = '';
double nilaiUts = 0, nilaiTugas = 0,nilaiUas = 0,
pNilaiUts = 0,pNilaiTugas = 0,pNilaiUas = 0,nilaiAkhir = 0;

void main() {
  nim = 'A11.2022.14632';
  nama = 'Ephesians Prismaranatha';
  nilaiUts = 90;
  nilaiTugas = 95;
  nilaiUas = 95;
  hitungnilai();
  cetakNilai();
}
void hitungnilai() {
  pNilaiUts = 0.35 * nilaiUts;
  pNilaiTugas = 0.30 * nilaiTugas;
  pNilaiUas = 0.35 * nilaiUas;
  nilaiAkhir = pNilaiUts + pNilaiTugas + pNilaiUas;
}
void cetakNilai() {
  print('Nim          : $nim');
  print('Nama         : $nama');
  print('Nilai UTS    : $nilaiUts, 35%  : $pNilaiUts');
  print('Nilai Tugas  : $nilaiTugas, 30%  : $pNilaiTugas');
  print('Nilai UAS    : $nilaiUas, 35%  : $pNilaiUas');
  print('Nilai Akhir  : $nilaiAkhir');
  nHuruf = getNilaiHuruf(nilaiAkhir);
  print('Nilai Huruf  : $nHuruf');
  predikat = getPredikat(nHuruf);
  print('Predikat     : $predikat');
}
String getNilaiHuruf(double na) {
  if (na >= 85) {
    nHuruf = 'A';
  } else if (na >= 80) {
    nHuruf = 'AB';
  } else if (na >= 70) {
    nHuruf = 'B';
  } else if (na >= 65) {
    nHuruf = 'BC';
  } else if (na >= 56) {
    nHuruf = 'C';
  } else if (na >= 40) {
    nHuruf = 'D';
  } else {
    nHuruf = 'E';
  }
  return nHuruf;
}
String getPredikat(String nh) {
  switch (nh) {
  case 'A':
    predikat = 'Apik'; break;
  case 'AB':
    predikat = 'Apik Baik'; break;
  case 'B':
    predikat = 'Baik'; break;
  case 'BC':
    predikat = 'Baik Cupup'; break;
  case 'C':
    predikat = 'Cukup'; break;
  case 'D':
    predikat = 'Dableg'; break;
  case'E':  
    predikat = 'Elek';
}
  return predikat;
}