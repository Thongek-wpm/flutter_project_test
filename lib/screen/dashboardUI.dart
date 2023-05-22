// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DashboardUi extends StatefulWidget {
  const DashboardUi({super.key});

  @override
  State<DashboardUi> createState() => _DashboardUiState();
}

class _DashboardUiState extends State<DashboardUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
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
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'LIFETIME SERVICES BREAKDONW',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  width: 250,
                                  height: 250,
                                  child: SfCircularChart(
                                    series: [
                                      DoughnutSeries<Sales, String>(
                                        dataSource: getString(),
                                        xValueMapper: (Sales dataList, _) =>
                                            dataList.x,
                                        yValueMapper: (Sales dataList, _) =>
                                            dataList.y,
                                      )
                                    ],
                                  ),
                                ),
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
                          padding: const EdgeInsets.all(15),
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {},
                            child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
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
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {},
                            child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                'View all invoices',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),
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
                    const Text(
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
                                    children: const [
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
                                    padding: const EdgeInsets.all(30),
                                    color: Colors.grey[100],
                                    height: 100,
                                    width: 1,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(50.0),
                                  child: Column(
                                    children: const [
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
                            Row(
                              children: const [
                                Text(
                                  'TOP 5 CLIENTS',
                                  style: TextStyle(fontSize: 10),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 200),
                                ),
                                Text(
                                  'SESSIONS',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100.0),
                                    child: Image.network(
                                      'https://media.customon.com/unsafe/1200x1200/img.customon.com/img/6385167/20157,12,2,0,34,160,32.227488151659,20,30,3cd2f9515baa0f9365fa68e7ac9e9670/merchantimagenew/youre-my-preson-hoodie-navy.jpg',
                                      width: 50,
                                      height: 50,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                ),
                                const Text('Alan Cooper'),
                                const Padding(
                                  padding: EdgeInsets.only(left: 150.0),
                                ),
                                const Text('30')
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100.0),
                                    child: Image.network(
                                      'https://media.customon.com/unsafe/1200x1200/img.customon.com/img/6385167/20157,12,2,0,34,160,32.227488151659,20,30,3cd2f9515baa0f9365fa68e7ac9e9670/merchantimagenew/youre-my-preson-hoodie-navy.jpg',
                                      width: 50,
                                      height: 50,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                ),
                                const Text('Alan Cooper'),
                                const Padding(
                                  padding: EdgeInsets.only(left: 150.0),
                                ),
                                const Text('30')
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

class SalesData {
  double x, y;
  SalesData(this.x, this.y);
}

dynamic getString() {
  List<Sales> dataList = <Sales>[
    Sales('', 35),
    Sales('', 30),
    Sales('', 20),
    Sales('', 15)
  ];
  return dataList;
}

class Sales {
  String x;
  double y;
  Sales(this.x, this.y);
}
