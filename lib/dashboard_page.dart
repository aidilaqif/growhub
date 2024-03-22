
import 'package:flutter/material.dart';
import 'package:growhub/data/plants.dart;
import 'package:growhub/humidity_page.dart';
import 'package:growhub/pH_page.dart';
import 'package:growhub/status_page.dart';
import 'package:growhub/weather_page.dart';

class DashBoardPage extends StatelessWidget {
  final Plants plants;
  final int index;
  const DashBoardPage({
    super.key,
    required this.plants,
    required this.index
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
        backgroundColor: Colors.white54,
        title: const Text(
          "Dashboard",
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Text(
              "Tag : ${plants.tagging}",
              style: const TextStyle(
                fontSize: 24,
                color: Color(0XFF545454),
                fontWeight: FontWeight.w800
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            //DaysToHarvest
            Center(
              child: Container(
                padding: const EdgeInsets.all(5),
                height: 281.9,
                width: 281.9,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0XFF2C855A),
                    width: 8,
                  ),
                  shape: BoxShape.circle,
                ),
                child: Container(
                  height: 281.9,
                  width: 281.9,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(plants.plantImage),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            //Status
            Container(
              height: 100,
              width: 350,
              decoration: const BoxDecoration(
                color: Color(0XFFE0E4E5),
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => StatusPage(plants: Plants.plants[index])));
                    },
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          width: 3,
                          color: const Color(0XFF545454),
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Text(
                          "i",
                          style: TextStyle(
                            fontSize: 28,
                            color: Color(0XFF545454),
                            fontWeight: FontWeight.w600
                          ),
                          )),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 258.3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          plants.plantName,
                          style: const TextStyle(
                            fontSize: 21,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          "Days until harvest: ${plants.daysToHarvest}",
                          style: const TextStyle(
                            fontSize: 21,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            //Humidity and PH
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HumidityPage()));
                  },
                  child: Container(
                    height: 100,
                    width: 165,
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    alignment: Alignment.centerLeft,
                    decoration: const BoxDecoration(
                      color: Color(0XFFE0E4E5),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Humidity",
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(
                        width: 165,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(plants.currentHumidity,
                              style: const TextStyle(
                                fontSize: 19,
                                color: Colors.black54,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Color(0XFF545454),
                            )
                          ],
                        ),
                      ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PHPage()));
                  },
                  child: Container(
                    height: 100,
                    width: 165,
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    alignment: Alignment.centerLeft,
                    decoration: const BoxDecoration(
                      color: Color(0XFFE0E4E5),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("pH",
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(
                        width: 165,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(plants.currentpH,
                              style: const TextStyle(
                                fontSize: 19,
                                color: Colors.black54,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Color(0XFF545454),
                            )
                          ],
                        ),
                      ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            //Weather and Air Moisture
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const WeatherPage()));
                  },
                  child: Container(
                    height: 100,
                    width: 165,
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    alignment: Alignment.centerLeft,
                    decoration: const BoxDecoration(
                      color: Color(0XFFE0E4E5),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Weather",
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(
                        width: 165,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(plants.currentWeather,
                              style: const TextStyle(
                                fontSize: 19,
                                color: Colors.black54,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Color(0XFF545454),
                            )
                          ],
                        ),
                      ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 100,
                  width: 165,
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  alignment: Alignment.centerLeft,
                  decoration: const BoxDecoration(
                    color: Color(0XFFE0E4E5),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Air Moisture",
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(
                        width: 165,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(plants.currentAirMoisture,
                              style: const TextStyle(
                                fontSize: 19,
                                color: Colors.black54,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Color(0XFF545454),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}