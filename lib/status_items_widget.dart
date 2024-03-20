import 'package:flutter/material.dart';
import 'package:growhub/status_items.dart';

class StatusItemsWidget extends StatelessWidget {
  final StatusItems statusItems;

  const StatusItemsWidget({
    super.key,
    required this.statusItems,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 108.6,
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          Container(
            width: 372.2,
            height: 84.6,
            decoration: BoxDecoration(
              color: const Color(0XFFE0E4E5),
              borderRadius: BorderRadius.circular(15)
            ),
            child: Row(
              children: [
                const SizedBox(
                  width: 16,
                ),
                Container(
                  height: 28.6,
                  width: 28.6,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      width: 2,
                      color: const Color(0XFF545454),
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Text(
                      "i",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0XFF545454),
                      ),
                    )
                  ),
                ),
                const SizedBox(
                  width: 14,
                ),
                SizedBox(
                  width: 303.6,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 63,
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            statusItems.status,
                            style: const TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          ('${statusItems.date} ${statusItems.time}'),
                          style: const TextStyle(
                            fontSize: 10,
                            color: Color(0XFF545454),
                            fontWeight: FontWeight.w600
                          ),
                          ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}