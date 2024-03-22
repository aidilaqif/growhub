
import 'package:flutter/material.dart';
import 'package:growhub/dashboard_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isGood = false;

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
              Tab(text: 'All Plant',),
              Tab(text: 'To Inspect',)
            ]
            ),
        ),
        body:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TabBarView(children: [
            GridView.count(
              scrollDirection: Axis.vertical,
              primary: false,
              padding: const EdgeInsets.all(10),
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DashBoardPage()));
                  },
                  child: Container(
                    height: 20,
                    width: 20,
                    color: Colors.red,
                  ),
                ),
                Container(
                  height: 20,
                  width: 20,
                  color: Colors.red,
                ),
                Container(
                  height: 20,
                  width: 20,
                  color: Colors.red,
                )
              ],
            ),
            ListView.separated(
              separatorBuilder: (BuildContext context, int index) => const Divider(),
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  color: Colors.green,
                  child: const Center(
                    child: Text('Plant')
                  ),
                );
              },
            ),
          ]),
        )
      ),
    );
  }
}