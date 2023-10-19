import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget imageSection = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 130,
          height: 100,
          color: Colors.green,
          child: Center(
            child: Text(
              "DCA",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Image.asset('assets/images/double_arrows.png', width: 50, height: 50),
        Container(
          width: 130,
          height: 100,
          color: Colors.green,
          child: Center(
            child: Text(
              "DCA",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );

    Widget buttonSection = Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 1,
            child: _bulidButtonColumn(
                'assets/images/space_station_icon.png', 'Space Stations'),
          ),
          Expanded(
              flex: 1,
              child: _bulidButtonColumn(
                  'assets/images/rocket_icon.png', 'Flights')),
          Expanded(
              flex: 1,
              child:
                  _bulidButtonColumn('assets/images/rover_icon.png', 'Rovers')),
        ],
      ),
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Raze Galactic'),
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: [
            buttonSection,
            imageSection,
          ],
        ),
      ),
    );
  } // end of build

  Column _bulidButtonColumn(String img, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(img, width: 30, height: 30),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        )
      ],
    );
  } // end of _bulidButtonColumn
} // end of StatelessWidget
