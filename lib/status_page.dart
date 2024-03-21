import 'package:flutter/material.dart';
import 'package:growhub/data/status_items.dart';
import 'package:growhub/status_items_widget.dart';

class StatusPage extends StatefulWidget {
  final bool isGood;
  const StatusPage({super.key, required this.isGood});

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  late bool _isGood = false;

  @override
  void initState() {
    super.initState();
    _isGood = widget.isGood;
  }

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
                Navigator.pop(context, _isGood);
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
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: StatusItems.statusItems.length,
                itemBuilder: (context, index){
                  return StatusItemsWidget(statusItems: StatusItems.statusItems[index]);
                },
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                _isGood = !_isGood;
              });
            },
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: 372.2,
              decoration: BoxDecoration(
                color: _isGood ? Colors.white : Colors.green,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: _isGood ? Colors.green : Colors.white,
                  width: 2
                )
              ),
              child: Text(
                _isGood ? "Fixed" : "Fix All",
                style: TextStyle(
                  fontSize: 18,
                  color: _isGood ? Colors.green : Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                ),
            ),
          ),
          const SizedBox(height: 30,)
        ],
      )
    );
  }
}

