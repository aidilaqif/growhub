class Plants {
  final String tagging;
  final String plantName;
  final String plantImage;
  final String daysToHarvest;
  final String currentHumidity;
  final String currentpH;
  final String currentWeather;
  final String currentAirMoisture;

  Plants({
    required this.tagging,
    required this.plantName,
    required this.plantImage,
    required this.daysToHarvest,
    required this.currentHumidity,
    required this.currentpH,
    required this.currentWeather,
    required this.currentAirMoisture
  });

  static List<Plants> plants = [
    Plants(
      tagging: '1',
      plantName: 'Cili',
      plantImage: 'assets/images/cili.jpeg',
      daysToHarvest: '28',
      currentHumidity: '30',
      currentpH: '7',
      currentWeather: 'Rainy',
      currentAirMoisture: '58',
    ),
    // Add more items as needed
  ];
}
