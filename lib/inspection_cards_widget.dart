import 'package:flutter/material.dart';
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
      padding: const EdgeInsets.only(
        top: 30,
      ),
      height: 199,
      width: 384.5,
      decoration: BoxDecoration(
        color: const Color(0XFFD9D9D9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 120,
            height: 199,
            child: Column(
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
                      fit: BoxFit.cover
                    ),
                  ),
                ),
                //plantName
                Text(
                  plants.plantName,
                  style: const TextStyle(
                    fontSize: 10,
                    color: Color(0XFF545454),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                //tagging
                Text(
                  "Tag: ${plants.tagging}",
                  style: const TextStyle(
                    fontSize: 10,
                    color: Color(0XFF545454),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 184.1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  plants.inspections1,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0XFF545454),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  plants.inspections2,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0XFF545454),
                    fontWeight: FontWeight.w700,
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