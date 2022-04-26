import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(GameApplication());
}

class GameApplication extends StatefulWidget {
  GameApplication({Key? key}) : super(key: key);

  @override
  State<GameApplication> createState() => _GameApplicationState();
}

class _GameApplicationState extends State<GameApplication> {
  int up = 1;
  int down = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Vazir'),
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
        appBar: AppBar(
          title: Text('سنگ   کاغذ   قیچی'),
          centerTitle: true,
          backgroundColor: Colors.deepOrange[700],
        ),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image(
                image: AssetImage('images/$up.png'),
                height: 100.0,
              ),
              TextButton(
                style: TextButton.styleFrom(primary: Colors.white),
                onPressed: () {
                  setState(() {
                    up = Random().nextInt(3) + 1;
                    down = Random().nextInt(3) + 1;
                  });
                },
                child: Text(
                  'شروع بازی',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              Image(
                image: AssetImage('images/$down.png'),
                height: 100.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

