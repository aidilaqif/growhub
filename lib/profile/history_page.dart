import 'package:flutter/material.dart';
import 'package:growhub/profile/widget/history_widget.dart';

import 'data/history_data.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 30,
          backgroundColor: Colors.white54,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios),
              );
            },
          ),
          title: const Text("History",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black))),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: HistoryData.historydata.length,
                  itemBuilder: (context, index) {
                    final historyData = HistoryData.historydata[index];
                    return HistoryWidget(historyData: historyData);
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
