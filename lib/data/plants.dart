class Plants {
  final String tagging;
  final String plantName;
  final String plantImage;
  final String daysToHarvest;
  final String currentHumidity;
  final String currentpH;
  final String currentWeather;
  final String currentAirMoisture;
  final String inspections1;
  final String inspections2;

  Plants({
    required this.tagging,
    required this.plantName,
    required this.plantImage,
    required this.daysToHarvest,
    required this.currentHumidity,
    required this.currentpH,
    required this.currentWeather,
    required this.currentAirMoisture,
    required this.inspections1,
    required this.inspections2
  });

  static List<Plants> plants = [
    Plants(
      tagging: 'A1',
      plantName: 'Cili Padi Centil',
      plantImage: 'assets/images/cili.jpeg',
      daysToHarvest: '28',
      currentHumidity: '30',
      currentpH: '7',
      currentWeather: 'Rainy',
      currentAirMoisture: '58',
      inspections1: "pH drops from 7 to 2",
      inspections2: "Humidity decrease to 50%"
    ),
    Plants(
      tagging: 'A2',
      plantName: 'Cili Padi Bara',
      plantImage: 'assets/images/cili2.jpeg',
      daysToHarvest: '28',
      currentHumidity: '30',
      currentpH: '7',
      currentWeather: 'Rainy',
      currentAirMoisture: '58',
      inspections1: "pH drops from 7 to 2",
      inspections2: "Humidity exceeds 90% from normal level"
    ),
    // Add more items as needed
  ];
}
