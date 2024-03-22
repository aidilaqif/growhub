
import 'package:flutter/material.dart';
import 'package:growhub/dashboard_page.dart';
import 'package:growhub/data/plants.dart';
import 'package:growhub/inspection_cards_widget.dart';
import 'package:growhub/plants_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          backgroundColor: Colors.white54,
          title: const Text(
            "GrowHub",
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'All',),
              Tab(text: 'Inspection',)
            ]
            ),
        ),
        body:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TabBarView(children: [
            GridView.builder(
              // scrollDirection: Axis.vertical,
              addSemanticIndexes: false,
              primary: false,
              padding: const EdgeInsets.all(10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 1.8),
              ),
              itemCount: Plants.plants.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => DashBoardPage(plants: Plants.plants[index], index: index)));
                  },
                  child: PlantsCardWidget(plants: Plants.plants[index]));
              }
            ),
            ListView.separated(
              separatorBuilder: (BuildContext context, int index) => const Divider(),
              itemCount: Plants.plants.length,
              itemBuilder: (BuildContext context, int index) {
                return InspectionCardsWidget(plants: Plants.plants[index]);
              },
            ),
          ]),
        )
      ),
    );
  }
}