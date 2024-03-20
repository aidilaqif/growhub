import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:growhub/discover_items.dart';
import 'package:growhub/discover_items_widget.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
        backgroundColor: Colors.white54,
        title: const Text(
          "Discover",
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          //Search Bar
          SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height:46,
                  width: 263.4,
                  decoration: BoxDecoration(
                    color: const Color(0XFFE0E4E5),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: const TextField(
                    style: TextStyle(color: Colors.black),
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      hintText: 'Search for crop or farm',
                      hintStyle: TextStyle(
                        fontSize: 15,
                        color: Color(0XFF545454)
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 30),
                      alignLabelWithHint: true,
                    ),
                    // onChanged: (){},
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                GestureDetector(
                  onTap: (){},//search f(x)
                  child: Container(
                    height: 46,
                    width: 49.4,
                    decoration: BoxDecoration(
                      color: const Color(0XFFD9D9D9),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: const Icon(
                      Icons.search,
                      size: 36,
                      ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: (){},//search f(x)
                  child: Container(
                    height: 46,
                    width: 49.4,
                    decoration: BoxDecoration(
                      color: const Color(0XFFD9D9D9),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: const Icon(
                      Icons.add,
                      size: 36,
                      ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          //Discover Items
          Expanded(
            flex: 1,
            child: SizedBox(
              width: 380,
              height: 630,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: DiscoverItems.discoverItems.length,
                itemBuilder: (context, index){
                  return DiscoverItemsWidget(discoverItems: DiscoverItems.discoverItems[index]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

