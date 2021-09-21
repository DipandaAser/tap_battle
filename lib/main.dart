import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tap Battle',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var player1 = 0.5;
  var player2 = 0.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.amber,
        child: Column(
          children: [
            GestureDetector(
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * player1,
                color: Colors.blue,
              ),
              onTap: () {
                setState(() {
                  player1 += 0.1;
                  player2 -= 0.1;
                });
              },
            ),
            GestureDetector(
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * player2,
                color: Colors.red,
              ),
              onTap: () {
                setState(() {
                  player2 += 0.1;
                  player1 -= 0.1;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
