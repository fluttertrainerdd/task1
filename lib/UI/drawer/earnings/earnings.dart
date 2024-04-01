import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Earnings extends StatefulWidget {
  const Earnings({Key? key}) : super(key: key);

  @override
  State<Earnings> createState() => _EarningsState();
}

class _EarningsState extends State<Earnings> {
  String selectedDateRange = '25 Feb - 4 March';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Earnings"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, top: 20, right: 20),
            child: Card(
              child: DropdownButton<String>(
                value: selectedDateRange,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedDateRange = newValue!;
                  });
                },
                items: <String>['25 Feb - 4 March', 'Another Date Range']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back_ios),
              ),
              Text(
                '\$1,765.52',
                style: TextStyle(fontSize: 30),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
          SizedBox(height: 3),
          Text(
            'EARNINGS',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.grey),
          ),

          SizedBox(height: 30),
          Text(
            'TAP THE BAR FOR DETAILS',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.grey),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 280,top: 13),
            child: Text(
              '\$340',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.grey),
            ),
          ),
          Divider(),
          SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: BarChart(
                BarChartData(
                  titlesData: FlTitlesData(
                    leftTitles: SideTitles(showTitles: false),
                    bottomTitles: SideTitles(
                      showTitles: true,
                      getTitles: (value) {
                        switch (value.toInt()) {
                          case 0:
                            return 'M';
                          case 1:
                            return 'T';
                          case 2:
                            return 'W';
                          case 3:
                            return 'T';
                          case 4:
                            return 'F';
                          case 5:
                            return 'S';
                          case 6:
                            return 'S';
                          default:
                            return '';
                        }
                      },
                    ),
                  ),
                  borderData: FlBorderData(show: false),
                  barGroups: [
                    BarChartGroupData(
                      x: 0,
                      barRods: [
                        BarChartRodData(
                          y: 6,
                          width: 44,
                          colors: [Colors.blue],
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 1,
                      barRods: [
                        BarChartRodData(
                          width: 44,
                          y: 8,
                          colors: [Colors.blue],
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 2,
                      barRods: [
                        BarChartRodData(
                          width: 44,
                          y: 10,
                          colors: [Colors.blue],
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 3,
                      barRods: [
                        BarChartRodData(
                          width: 44,
                          y: 7,
                          colors: [Colors.blue],
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 4,
                      barRods: [
                        BarChartRodData(
                          width: 44,

                          y: 12,
                          colors: [Colors.blue],
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 5,
                      barRods: [
                        BarChartRodData(
                          width: 44,

                          y: 9,
                          colors: [Colors.blue],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22,right: 120),
                child: Text("81",style: TextStyle(fontSize: 35),),
              ),
                  SizedBox(height: 22,),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text("43h 29m",style: TextStyle(fontSize: 35),),
                 )
            ],
          )
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Earnings(),
  ));
}
