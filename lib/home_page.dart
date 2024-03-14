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
              height: 30,
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
              height: 30,
            ),
            //Status
            Container(
              height: 100,
              width: 350,
              decoration: const BoxDecoration(
                color: Color(0XFFE0E4E5),
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            //Humidity and PH
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 165,
                  decoration: const BoxDecoration(
                    color: Color(0XFFE0E4E5),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 100,
                  width: 165,
                  decoration: const BoxDecoration(
                    color: Color(0XFFE0E4E5),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            //Weather and Air Moisture
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 165,
                  decoration: const BoxDecoration(
                    color: Color(0XFFE0E4E5),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 100,
                  width: 165,
                  decoration: const BoxDecoration(
                    color: Color(0XFFE0E4E5),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}