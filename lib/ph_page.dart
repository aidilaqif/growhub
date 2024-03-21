import 'package:flutter/material.dart';

class PHPage extends StatelessWidget {
  const PHPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
        backgroundColor: Colors.white54,
        title: const Text(
          "pH",
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 351.9,
                height: 269.2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/pH.jpeg')
                  )
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: 342.6,
                width: 383.2,
                decoration: BoxDecoration(
                  color: const Color(0XFFD9D9D9),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Table(
                  border: TableBorder.all(
                    width: 0,
                    color: Colors.transparent
                  ),
                  columnWidths: const <int, TableColumnWidth>{
                    0: IntrinsicColumnWidth(),
                    1: IntrinsicColumnWidth(),
                    2: IntrinsicColumnWidth(),
                  },
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: const [
                    //row 1
                    TableRow(
                      children: <Widget>[
                        SizedBox(
                          height: 50,
                        ),
                        Center(
                          child: Text(
                            'pH',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ),
                        Center(
                          child: Text(
                            'Condition',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        )
                      ],
                    ),
                    //row 2
                    TableRow(
                      children: <Widget>[
                        SizedBox(
                          height: 50,
                          child: Center(
                            child: Text(
                              'Today:',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                              ),
                            )
                          ),
                        ),
                        Center(
                          child: Text(
                            '7',
                            style: TextStyle(
                              fontSize: 17,
                              color: Color(0XFF545454),
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ),
                        Center(
                          child: Text(
                            'Too Alkaline',
                            style: TextStyle(
                              fontSize: 17,
                              color: Color(0XFFFFC92F),
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ),
                      ],
                    ),
                    // row 3
                    TableRow(
                      children: <Widget>[
                        SizedBox(
                          height: 50,
                          child: Center(
                            child: Text(
                              'Yesterday:',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                              ),
                            )
                          ),
                        ),
                        Center(
                          child: Text(
                            '5.9',
                            style: TextStyle(
                              fontSize: 17,
                              color: Color(0XFF545454),
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ),
                        Center(
                          child: Text(
                            'Good',
                            style: TextStyle(
                              fontSize: 17,
                              color: Color(0XFF2C855A),
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ),
                      ],
                    ),
                    //row 4
                    TableRow(
                      children: <Widget>[
                        SizedBox(
                          height: 50,
                          child: Center(
                            child: Text(
                              'Last 2 days:',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                              ),
                            )
                          ),
                        ),
                        Center(
                          child: Text(
                            '5.8',
                            style: TextStyle(
                              fontSize: 17,
                              color: Color(0XFF545454),
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ),
                        Center(
                          child: Text(
                            'Good',
                            style: TextStyle(
                              fontSize: 17,
                              color: Color(0XFF2C855A),
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ),
                      ],
                    ),
                    //row 5
                    TableRow(
                      children: <Widget>[
                        SizedBox(
                          height: 50,
                          child: Center(
                            child: Text(
                              'Last 3 days:',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                              ),
                            )
                          ),
                        ),
                        Center(
                          child: Text(
                            '5.3',
                            style: TextStyle(
                              fontSize: 17,
                              color: Color(0XFF545454),
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ),
                        Center(
                          child: Text(
                            'Good',
                            style: TextStyle(
                              fontSize: 17,
                              color: Color(0XFF2C855A),
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ),
                      ],
                    ),
                    // row 6
                    TableRow(
                      children: <Widget>[
                        SizedBox(
                          height: 50,
                          child: Center(
                            child: Text(
                              'Last 4 days:',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                              ),
                            )
                          ),
                        ),
                        Center(
                          child: Text(
                            '5',
                            style: TextStyle(
                              fontSize: 17,
                              color: Color(0XFF545454),
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ),
                        Center(
                          child: Text(
                            'Too Acidic',
                            style: TextStyle(
                              fontSize: 17,
                              color: Color(0XFFFF0000),
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}