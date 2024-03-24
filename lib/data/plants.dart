import 'package:growhub/data/status_items.dart';
import 'package:growhub/pallete.dart';

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
  final statusColor;

  Plants(
      {required this.tagging,
      required this.plantName,
      required this.plantImage,
      required this.daysToHarvest,
      required this.currentHumidity,
      required this.currentpH,
      required this.currentWeather,
      required this.currentAirMoisture,
      required this.inspections1,
      required this.inspections2,
      required this.statusItems,
      required this.statusColor});

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
            time: '3:00 PM'),
        StatusItems(
            status: 'Humidity exceed 80%. Consider reduce watering',
            date: '12/3/2024',
            time: '3:00 PM'),
        StatusItems(
            status: 'Plants pH is below 6. Consider reduce using pesticides',
            date: '12/3/2024',
            time: '3:00 PM'),
      ],
      statusColor: Pallete.greenBasic,
    ),
    Plants(
      tagging: 'A2',
      plantName: 'Cili Padi Bara',
      plantImage: 'assets/images/cili2.jpeg',
      daysToHarvest: '16',
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
            time: '3:00 PM'),
        StatusItems(
            status: 'Humidity exceed 90%. Consider reduce watering',
            date: '12/3/2024',
            time: '3:00 PM'),
      ],
      statusColor: Pallete.greenBasic,
    ),
    Plants(
      tagging: 'A3',
      plantName: 'Cili Siam',
      plantImage: 'assets/images/cilisiam.jpg',
      daysToHarvest: '69',
      currentHumidity: '20',
      currentpH: '6.5',
      currentWeather: 'Cloudy',
      currentAirMoisture: '58',
      inspections1: "Leaves showing signs of nutrient deficiency",
      inspections2: "Humidity is not within optimal range",
      statusItems: [
        StatusItems(
            status: 'Crops need 80ml water',
            date: '12/5/2024',
            time: '5:00 PM'),
        StatusItems(
            status: 'Check for pests and diseases',
            date: '1/3/2024',
            time: '3:00 PM'),
      ],
      statusColor: Pallete.redBasic,
    ),
    Plants(
      tagging: 'A4',
      plantName: 'Cili Burung',
      plantImage: 'assets/images/ciliburung.JPG',
      daysToHarvest: '20',
      currentHumidity: '45',
      currentpH: '7',
      currentWeather: 'Sunny',
      currentAirMoisture: '55',
      inspections1: "No significant changes ",
      inspections2: "Humidity within optimal range",
      statusItems: [
        StatusItems(
            status: 'Crops need 80ml water',
            date: '12/3/2024',
            time: '3:00 PM'),
        StatusItems(
            status: 'Check for pests and diseases',
            date: '12/3/2024',
            time: '3:00 PM'),
      ],
      statusColor: Pallete.greenBasic,
    ),
    Plants(
      tagging: 'A5',
      plantName: 'Cili Padi Kampung',
      plantImage: 'assets/images/cilipadikampung.jpg',
      daysToHarvest: '70',
      currentHumidity: '30',
      currentpH: '9',
      currentWeather: 'Rainy',
      currentAirMoisture: '78',
      inspections1: "pH increase from 7 to 9",
      inspections2: "Humidity increase 20%",
      statusItems: [
        StatusItems(
            status: 'Humidity exceed 20%. Consider reduce watering',
            date: '8/3/2024',
            time: '3:00 PM'),
        StatusItems(
            status: 'Humidity decrease 90%. Plants need 300ml water',
            date: '8/9/2024',
            time: '12:00 PM'),
      ],
      statusColor: Pallete.greenBasic,
    ),
    Plants(
      tagging: 'A6',
      plantName: 'Cili Kulai',
      plantImage: 'assets/images/cilikulai.jpg',
      daysToHarvest: '56',
      currentHumidity: '49',
      currentpH: '4',
      currentWeather: 'Sunny',
      currentAirMoisture: '58',
      inspections1: "Humidity decrease 20%",
      inspections2: "pest or diseases may be detected",
      statusItems: [
        StatusItems(
            status:
                'Water the plant more than 300ml as weather is scorching hot',
            date: '2/7/2024',
            time: '3:00 PM'),
        StatusItems(
            status: 'Apply fertilizer to balance the pH',
            date: '2/7/2024',
            time: '9:00 AM'),
      ],
      statusColor: Pallete.redBasic,
    ),
    Plants(
      tagging: 'A7',
      plantName: 'Cili Geronong',
      plantImage: 'assets/images/ciligeronong.png',
      daysToHarvest: '90',
      currentHumidity: '49',
      currentpH: '7',
      currentWeather: 'Cloudy',
      currentAirMoisture: '68',
      inspections1: "Check for pests and diseases",
      inspections2: "Humidity within optimal range",
      statusItems: [
        StatusItems(
            status: 'Apply around 50ml pesticides',
            date: '2/7/2024',
            time: '7:00 PM'),
        StatusItems(
            status: 'Apply fertilizer to balance the pH',
            date: '12/3/2024',
            time: '9:00 AM'),
      ],
      statusColor: Pallete.greenBasic,
    ),

    Plants(
      tagging: 'A8',
      plantName: 'Cili Taming Sari',
      plantImage: 'assets/images/cilitamingsari.jpg',
      daysToHarvest: '119',
      currentHumidity: '49',
      currentpH: '7',
      currentWeather: 'Sunny',
      currentAirMoisture: '23',
      inspections1: "Soil moisture decrease by 20% ",
      inspections2: "Humidity decrease 30%",
      statusItems: [
        StatusItems(
            status: 'Apply around 30ml pesticides',
            date: '2/7/2024',
            time: '7:00 PM'),
        StatusItems(
            status: 'Plant need 95ml water',
            date: '12/3/2024',
            time: '9:00 AM'),
        StatusItems(
            status: 'Check soil for drainage',
            date: '12/5/2024',
            time: '10:00 AM'),
      ],
      statusColor: Pallete.redBasic,
    ),
    // Add more items as needed
  ];
}
