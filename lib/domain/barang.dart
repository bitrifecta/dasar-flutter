class Barang {
  final int id;
  final String nama_barang;
  final int harga;
  final int? hargaCoret;
  final String kategori;
  final String satuan;
  final double rating;
  final int terjual;
  final String imageUrl;
  final String deskripsi;

  const Barang({
    required this.id,
    required this.nama_barang,
    required this.harga,
    this.hargaCoret,
    this.kategori = 'Sayuran',
    this.satuan = '1 kg',
    this.rating = 4.8,
    this.terjual = 50,
    this.imageUrl = '',
    this.deskripsi = '',
  });

  String get nama => nama_barang;
}
