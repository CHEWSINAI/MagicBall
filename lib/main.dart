import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue.shade100,
        appBar: AppBar(
          title: Center(child: Text("Ask Me Anything")),
          backgroundColor: Colors.lightBlue.shade900,
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton( //randomise the Ball Number
                onPressed: () {
                  setState(() {
                    ballNumber = Random().nextInt(5) + 1; //functions
                    print('The button is pressed. Your new ball number is $ballNumber');
                  });
                },
                child: ballNumber == 0 //if Ball Number equals 0
                    ? Container(
                  width: 300,
                  height: 300,
                  color: Colors.lightBlue.shade100, //container color
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar( //image for click me
                        backgroundImage: AssetImage('images1/image6.png'),
                        radius: 100.0,
                      ),
                      Text(
                        'Press the button to see your future', //user reminder
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Time New Roman',
                        ),
                        textAlign: TextAlign.center, //make user reminder center
                      ),
                    ],
                  ),
                )
                    : Image.asset( //if Ball Number not equals to 0
                  'images/ball$ballNumber.png',
                  height: 300,
                  width: 300,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
