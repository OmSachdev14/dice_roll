import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var leftt = 1;
  var right = 2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Title(
            color: Colors.black,
            child: Text(
              "Dicee",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
          ),
          centerTitle: true,
        ),

        body: GestureDetector(
          onTap: () {
            var dicee1 = Random().nextInt(6) + 1;
            var dicee2 = Random().nextInt(6) + 1;
            setState(() {
              leftt = dicee1;
              right = dicee2;
            });
          },
          child: Center(
            child: Row(
              children: [
                Expanded(
                  child: Image(
                    image: AssetImage('assets/images/dice$leftt.png'),
                  ),
                ),
                Expanded(
                  child: Image(
                    image: AssetImage('assets/images/dice$right.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
