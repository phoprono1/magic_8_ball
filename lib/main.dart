import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Magic 8 Ball'),
          backgroundColor: Colors.black,
        ),
        body: Magic8BallPage(),
      ),
    );
  }
}

class Magic8BallPage extends StatefulWidget {
  @override
  _Magic8BallPageState createState() => _Magic8BallPageState();
}

class _Magic8BallPageState extends State<Magic8BallPage> {
  int answerIndex = 0;

  final List<String> answers = [
    'Yes',
    'No',
    'Ask again later',
    'Definitely',
    'Absolutely not',
    'Maybe',
    'I wouldn\'t count on it',
    'Yes, in due time',
  ];

  void getAnswer() {
    setState(() {
      answerIndex =
          Random().nextInt(answers.length); // Lấy câu trả lời ngẫu nhiên
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/magic8ball.png',
              width: 200, height: 200), // Hình ảnh viên bi 8 thần kỳ
          SizedBox(height: 20),
          Text(
            answers[answerIndex],
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: getAnswer,
            child: Text('Ask the Magic 8 Ball'),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
          ),
        ],
      ),
    );
  }
}
