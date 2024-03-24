@ -2,43 +2,43 @@
import 'package:growhub/add_plant/widget/add_plant_button_widget.dart';
import 'package:growhub/add_plant/widget/add_plant_image_widget.dart';
import 'package:growhub/add_plant/widget/details_field_widget.dart';
import 'package:growhub/pallete.dart';

class AddPlantPage extends StatelessWidget {
  const AddPlantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Pallete.greenBasic,
        title: const Text(
          "Add Plant",
          style: TextStyle(
              fontSize: 30,
              color: Pallete.greenTertiary,
              fontWeight: FontWeight.bold),
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
