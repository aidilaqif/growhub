import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:growhub/discover_items.dart';

class DiscoverPostPage extends StatelessWidget {
  final DiscoverItems discoverItems;
  const DiscoverPostPage({
    super.key,
    required this.discoverItems
  });

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
          "",
          ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            children: [
              //Discover Page
              SizedBox(
                width: 372.6,
                child: Text(
                  discoverItems.title,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                height: 203.7,
                width: 372.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(discoverItems.image),
                    fit: BoxFit.fill,
                    )
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                flex: 1,
                child: SizedBox(
                  height: 500,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: SizedBox(
                      width: 372.2,
                      child: Text(
                        discoverItems.caption,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Color(0XFF545454),
                          fontWeight: FontWeight.w500
                        ),
                        ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}