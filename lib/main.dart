import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp( MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child:  Text(
            'Magic Ball',
            style: TextStyle(
              fontFamily: 'Stick',
            ),
          ),
        ),
      ),
      body: changeBall(),
    ),
  ),);
}

class changeBall extends StatefulWidget {
  const changeBall({Key? key}) : super(key: key);

  @override
  State<changeBall> createState() => _changeBallState();
}

class _changeBallState extends State<changeBall> {

  int ballNum = 0;

  final fieldText = TextEditingController();


  void Ball(){
    print('Button Pressed');
    ballNum = Random().nextInt(5) + 1;
    fieldText.clear();
  }

  void clearText() {
    fieldText.clear();
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 15.0,
        ),
        const Expanded(
          flex: 3,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Question',
              hintText: 'Enter Your Question Here',
            ),
          ),
        ),
        Expanded(
          flex: 1,
            child: ElevatedButton(
              child: const Text(
                'Submit',
                style: TextStyle(
                  fontFamily: 'Abel',
                  fontSize: 25.0,
                ),
              ),
              onPressed: (){
                setState(() {
                  Ball();
                  clearText();
                });
              },
            ),),
        Expanded(
          flex: 14,
          child: Image.asset('images/Ball$ballNum.png'),),
      ],
    );
  }
}
