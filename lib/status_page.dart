import 'package:flutter/material.dart';
import 'package:growhub/status_items.dart';
import 'package:growhub/status_items_widget.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
        backgroundColor: Colors.white54,
        leading: Builder(
          builder: (BuildContext context){
            return IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios),
              );
          }
        ),
        title: const Text(
          "Status",
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          ),
      ),
      body: Center(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: StatusItems.statusItems.length,
          itemBuilder: (context, index){
            return StatusItemsWidget(statusItems: StatusItems.statusItems[index]);
          },
        ),
      )
    );
  }
}

