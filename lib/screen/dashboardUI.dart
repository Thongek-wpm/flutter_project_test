import 'package:flutter/material.dart';

class DashboardUi extends StatefulWidget {
  const DashboardUi({super.key});

  @override
  State<DashboardUi> createState() => _DashboardUiState();
}

class _DashboardUiState extends State<DashboardUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'LIFETIME SERVICES BREAKDONW',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 200,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: Colors.blue,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                              ),
                              Text(
                                '35%',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                              ),
                              Text('Resume edits'),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: Colors.yellow,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                              ),
                              Text(
                                '30%',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                              ),
                              Text('Interview prep'),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: Colors.pink,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                              ),
                              Text(
                                '20%',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                              ),
                              Text('Education...'),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: Colors.grey,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                              ),
                              Text(
                                '15%',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                              ),
                              Text('Other Services'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(15),
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              'Create invoice',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              'View all invoices',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Clients',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(50.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        'CLIENT COUNT',
                                        style: TextStyle(fontSize: 10),
                                      ),
                                      Text(
                                        '\200',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                  child: Container(
                                    padding: EdgeInsets.all(30),
                                    color: Colors.grey[100],
                                    height: 100,
                                    width: 1,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(50.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        'AVG SEEISONS',
                                        style: TextStyle(fontSize: 10),
                                      ),
                                      Text(
                                        '\3 ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                ]),
          ),
        ],
      ),
    );
  }
}
