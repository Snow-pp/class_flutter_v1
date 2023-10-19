import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                      child: Center(
                        child: Text('0'),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.greenAccent,
                      child: Center(
                        child: Text('1'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.greenAccent,
                      child: Center(
                        child: Text('2'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.greenAccent,
                      child: Center(
                        child: Text('3'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.deepOrangeAccent,
                      child: Center(
                        child: Text('CA'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.greenAccent,
                      child: Center(
                        child: Text('4'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.greenAccent,
                      child: Center(
                        child: Text('5'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.greenAccent,
                      child: Center(
                        child: Text('6'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.amberAccent,
                      child: Center(
                        child: Text('+'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.greenAccent,
                      child: Center(
                        child: Text('7'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.greenAccent,
                      child: Center(
                        child: Text('8'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.greenAccent,
                      child: Center(
                        child: Text('9'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.greenAccent,
                      child: Center(
                        child: Text('0'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
