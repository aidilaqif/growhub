class DiscoverItems {
  final String image;
  final String caption;

  DiscoverItems({required this.image, required this.caption});

  static List<DiscoverItems> discoverItems = [
    DiscoverItems(
      image: 'assets/images/cili.jpeg',
      caption: "Tanda-Tanda Kekurangan Unsur Nutrient Pokok Cili Pada Daun Tua & Muda",
    ),
    DiscoverItems(
      image: 'assets/images/cili1.jpeg',
      caption: "Jualan Cili Minyak Sempena Bulan Ramadhan",
    ),
    DiscoverItems(
      image: 'assets/images/cili2.jpeg',
      caption: "Pengusaha Cili Tempatan Tingkat Hasil Jualan Sewaktu Musim Panas",
    ),
    // Add more items as needed
  ];
}
