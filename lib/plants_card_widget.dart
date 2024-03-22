import 'package:flutter/material.dart';
import 'package:growhub/data/plants.dart';

class PlantsCardWidget extends StatelessWidget {
  final Plants plants;
  const PlantsCardWidget({
    super.key,
    required this.plants,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 234.8,
      width: 172.4,
      decoration: BoxDecoration(
        color: const Color(0XFFD9D9D9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 109.8,
            width: 109.8,
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
          Text(
            plants.plantName,
            style: const TextStyle(
              fontSize: 13,
              color: Color(0XFF010101),
              fontWeight: FontWeight.bold
            ),
          ),
          Text(
            "Tag: ${plants.tagging}",
            style: const TextStyle(
              fontSize: 10,
              color: Color(0XFF545454),
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "Days until harvest: ${plants.daysToHarvest}",
            style: const TextStyle(
              fontSize: 9,
              color: Color(0XFF545454),
              fontWeight: FontWeight.w500
            ),
          )
        ],
      ),
    );
  }
}