import 'package:flutter/material.dart';
import 'package:growhub/profile/data/history_data.dart';

class HistoryWidget extends StatelessWidget {
  final HistoryData historyData;

  const HistoryWidget({
    super.key,
    required this.historyData,
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
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                const SizedBox(
                  width: 16,
                ),
                Container(
                  height: 28.6,
                  width: 15,
                  child: const Center(
                      child: Icon(
                    Icons.check_circle,
                    color: Colors.greenAccent,
                    size: 18,
                  )),
                ),
                const SizedBox(
                  width: 14,
                ),
                SizedBox(
                  width: 303.6,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            historyData.Historyplantname,
                            style: const TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${historyData.HistoryStatus}',
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 109, 19, 19)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'Date \n${historyData.Historydate}',
                                    style: const TextStyle(
                                        fontSize: 10,
                                        color: Color(0XFF545454),
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              SizedBox(width: 8),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Time \n${historyData.Historytime}',
                                      style: const TextStyle(
                                          fontSize: 10,
                                          color: Color(0XFF545454),
                                          fontWeight: FontWeight.w600))
                                ],
                              )
                            ],
                          ),
                        ],
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
