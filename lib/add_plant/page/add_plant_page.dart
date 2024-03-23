import 'package:flutter/material.dart';
import 'package:growhub/add_plant/widget/add_plant_button_widget.dart';
import 'package:growhub/add_plant/widget/add_plant_image_widget.dart';
import 'package:growhub/add_plant/widget/details_field_widget.dart';

class AddPlantPage extends StatelessWidget {
  const AddPlantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
        backgroundColor: Colors.white54,
        title: const Text(
          "Add Plant",
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                AddPlantImageWidget(),
                SizedBox(
                  height: 50,
                ),
                DetailsFieldWidget(details: 'Plant Name (Ex: Cili Padi)'),
                SizedBox(
                  height: 40,
                ),
                DetailsFieldWidget(details: 'Tagging (Ex: A1)'),
                SizedBox(
                  height: 40,
                ),
                DetailsFieldWidget(details: 'Date & Time'),
                SizedBox(
                  height: 60,
                ),
                AddPlantButtonWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}