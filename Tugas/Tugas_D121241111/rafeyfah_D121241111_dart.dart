void main() {
  // Daftar harga produk Bath & Body Works
  Map<String, double> daftarHarga = {
    'Vibrant Jasmine Body Cream': 210000,
    'Warm Vanilla Sugar Body Cream': 120000,
    'A Thousand Wishes Fine Fragrance Mist': 470000,
    'In The Stars Fine Fragrance Mist': 230000,
    'Mahogany Vanilla Single Wick Candle': 360000,
  };

  // Daftar belanja
  Map<String, int> daftarBelanja = {
    'Vibrant Jasmine Body Cream': 1,
    'Warm Vanilla Sugar Body Cream': 1,
    'A Thousand Wishes Fine Fragrance Mist': 1,
    'In The Stars Fine Fragrance Mist': 1,
    'Mahogany Vanilla Single Wick Candle': 1,
  };

  // Menghitung total belanja
  double total = hitungTotal(daftarHarga, daftarBelanja);

  // Menentukan diskon
  double diskon;

  if (total >= 1000000) {
    diskon = 0.20;
  } else if (total >= 500000) {
    diskon = 0.10;
  } else {
    diskon = 0;
  }

  // Menghitung jumlah diskon dan total akhir
  double jumlahDiskon = total * diskon;
  double totalAkhir = total - jumlahDiskon;

  // Menampilkan hasil
  print('===== BATH & BODY WORKS =====');
  print('Total Belanja : Rp$total');
  print('Diskon        : ${diskon * 100}%');
  print('Potongan      : Rp$jumlahDiskon');
  print('Total Akhir   : Rp$totalAkhir');
}

// Function untuk menghitung total belanja
double hitungTotal(
    Map<String, double> harga,
    Map<String, int> belanja) {
  double total = 0;

  belanja.forEach((barang, jumlah) {
    total += harga[barang]! * jumlah;
  });

  return total;
}