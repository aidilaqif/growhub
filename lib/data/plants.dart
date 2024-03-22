import 'package:growhub/data/status_items.dart';

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
  final List<StatusItems> statusItems;

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
    required this.inspections2,
    required this.statusItems
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
      inspections2: "Humidity decrease to 50%",
      statusItems: [
        StatusItems(
          status: 'Crops need 300ml water',
          date: '12/3/2024',
          time: '3:00 PM'
        ),
        StatusItems(
          status: 'Humidity exceed 80%. Consider reduce watering',
          date: '12/3/2024',
          time: '3:00 PM'
        ),
        StatusItems(
          status: 'Plants pH is below 6. Consider reduce using pesticides',
          date: '12/3/2024',
          time: '3:00 PM'
        ),
      ]
    ),
    Plants(
      tagging: 'A2',
      plantName: 'Cili Padi Bara',
      plantImage: 'assets/images/cili2.jpeg',
      daysToHarvest: '20',
      currentHumidity: '30',
      currentpH: '7',
      currentWeather: 'Rainy',
      currentAirMoisture: '58',
      inspections1: "pH drops from 7 to 2",
      inspections2: "Humidity exceeds 90% from normal level",
      statusItems: [
        StatusItems(
          status: 'Crops need 100ml water',
          date: '12/3/2024',
          time: '3:00 PM'
        ),
        StatusItems(
          status: 'Humidity exceed 90%. Consider reduce watering',
          date: '12/3/2024',
          time: '3:00 PM'
        ),
      ]
    ),
    // Add more items as needed
  ];
}
