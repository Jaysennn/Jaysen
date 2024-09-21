class Produk {
  String namaProduk;
  double harga;
  int jumlah;
  double diskon;

  Produk(this.namaProduk, this.harga, this.jumlah, this.diskon);

  double hitungTotalHargaTanpaDiskon() {
    return harga * jumlah;
  }

  double hitungTotalHargaSetelahDiskon() {
    double totalHarga = hitungTotalHargaTanpaDiskon();
    double totalDiskon = totalHarga * (diskon / 100);
    return totalHarga - totalDiskon;
  }

  void tampilkanInformasiProduk() {
    print("Nama Produk: $namaProduk");
    print("Harga Satuan: Rp ${harga}");
    print("Jumlah: $jumlah");
    print("Diskon: ${diskon}%");
    print("Total Harga Tanpa Diskon: Rp ${hitungTotalHargaTanpaDiskon()}");
    print("Total Harga Setelah Diskon: Rp ${hitungTotalHargaSetelahDiskon()}");
  }
}

void main() {
  Produk kamera = Produk("Kamera", 1500000, 2, 10);
  kamera.tampilkanInformasiProduk();
}
