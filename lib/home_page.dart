import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            //DaysToHarvest
            Center(
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0XFF2C855A),
                    width: 8,
                    ),
                  shape: BoxShape.circle,
                ),
                child:const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "28 Days",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      "Until Harvest",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black45
                      )
                      )
                  ],
                )
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
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        width: 2,
                        color: Colors.black54
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Text(
                        "i",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54
                        ),
                        )),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const SizedBox(
                    width: 90,
                    child: Text(
                      "Status : ",
                      style: TextStyle(
                        fontSize: 21,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 60,
                    child: Text(
                      "Bad",
                      style: TextStyle(
                        fontSize: 21,
                        color: Colors.red,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  )
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
                Container(
                  height: 100,
                  width: 165,
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  alignment: Alignment.centerLeft,
                  decoration: const BoxDecoration(
                    color: Color(0XFFE0E4E5),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Humidity",
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text("30",
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.black54,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ],
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
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("pH",
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text("7",
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.black54,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ],
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
                Container(
                  height: 100,
                  width: 165,
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  alignment: Alignment.centerLeft,
                  decoration: const BoxDecoration(
                    color: Color(0XFFE0E4E5),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Weather",
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text("Rainy",
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.black54,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ],
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
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Air Moisture",
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text("58%",
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.black54,
                          fontWeight: FontWeight.w700
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