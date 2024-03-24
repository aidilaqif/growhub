import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:growhub/data/plants.dart';

class InspectionCardsWidget extends StatelessWidget {
  final Plants plants;
  const InspectionCardsWidget({
    super.key,
    required this.plants,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 33, left: 13, right: 19, bottom: 10),
      height: 199,
      width: 384.5,
      decoration: BoxDecoration(
        color: const Color(0XFFD9D9D9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 120,
            height: 199,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //plantImage
                Container(
                  height: 105.8,
                  width: 105.8,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0XFF2C855A),
                      width: 4,
                    ),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(plants.plantImage),
                        fit: BoxFit.cover),
                  ),
                ),
                //plantName
                Text(
                  plants.plantName,
                  style: const TextStyle(
                    fontSize: 10,
                    color: Color(0XFF545454),
                    fontWeight: FontWeight.w800,
                  ),
                ),
                //tagging
                Text(
                  "Tag: ${plants.tagging}",
                  style: const TextStyle(
                    fontSize: 10,
                    color: Color(0XFF545454),
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 213.3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: 213.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //white dot
                      Container(
                        height: 11.5,
                        width: 12.2,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                      //inspections 1
                      SizedBox(
                        width: 184.1,
                        child: Text(
                          plants.inspections1,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Color(0XFF545454),
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 213.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //white dot
                      Container(
                        height: 11.5,
                        width: 12.2,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                      //inspections 2
                      SizedBox(
                        width: 184.1,
                        child: Text(
                          plants.inspections2,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Color(0XFF545454),
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
