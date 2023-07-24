// import 'dart:html';

// import 'dart:js_util';

// import 'package:flutter/foundation.dart';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirstPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var value1 = '3';
  var value2 = '5';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dice App'),
        backgroundColor: Colors.red[900],
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Random random = Random();
                    int newValue = random.nextInt(6) + 1;
                    value1 = newValue.toString();
                  });
                },
                child: Image.asset('assets/dice$value1.png'),
              ),
            ),
            SizedBox(
              width: 50,
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Random random = Random();
                    int newValue = random.nextInt(6) + 1;
                    value2 = newValue.toString();
                  });
                },
                child: Image.asset('assets/dice$value2.png'),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.red[600],
    );
  }
}
