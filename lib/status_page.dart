import 'package:flutter/material.dart';
import 'package:growhub/status_items_widget.dart';

import 'data/plants.dart';

class StatusPage extends StatelessWidget {
  final Plants plants;
  const StatusPage({super.key, required this.plants});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: Pallete.greenBasic,
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Pallete.greenTertiary,
              ),
            );
          }),
          title: const Text(
            "Status",
            style: TextStyle(
              fontSize: 30,
              color: Pallete.greenTertiary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Center(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: plants.statusItems.length,
                  itemBuilder: (context, index) {
                    final statusItem = plants.statusItems[index];
                    return StatusItemsWidget(statusItems: statusItem);
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ));
  }
}
