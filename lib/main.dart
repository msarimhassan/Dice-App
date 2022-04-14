import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return (runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dice_Game'),
        backgroundColor: Colors.red,
      ),
      body: Dice(),
      bottomNavigationBar: BottomAppBar(
        child: Text('Made with ❤ by Sarim'),
      ),
    ),
  )));
}

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int Leftdicenumber = 6;
  int rightNumber = 6;

  void generateRandomnumber() {
    Random random = new Random();
    setState(() {
      Leftdicenumber = random.nextInt(6) + 1;
      rightNumber = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
                onPressed: () {
                  generateRandomnumber();
                },
                child: Image.asset('images/dice$Leftdicenumber.png')),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                generateRandomnumber();
              },
              child: Image.asset('images/dice$rightNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
