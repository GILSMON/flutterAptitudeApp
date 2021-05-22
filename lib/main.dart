import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }

}
class _MyAppState extends State<MyApp>{
  var _questionIndex = 0;

  void answerChoosen() {
    setState(() {
      _questionIndex = _questionIndex + 1;

    });
    print(_questionIndex);
  }

  Widget build(BuildContext context) {
    List<String> questions = ['what\'s your name', '10 + 5 = '];
    var aptitudeQuestion = [
      '1) What is the average of first five multiples of 12?',
      '2) Average of five numbers is 20. If each number is multiplied by 2, what will be the new average?',
      '3) If the average of three consecutive even numbers is 34, find the largest of these numbers.',
      '4) 10 typists can type 600 pages in 8 hours.Find the average number of pages typed by each typist in an hour.',
      '5) The average of Sohan\'s marks in 6 subjects is 74. If his average in five subjects excluding science is 70,how many marks he obtained in science?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aptitude test'),
        ),
        body: Column(
          children: [
            Question(aptitudeQuestion[_questionIndex]),
            ElevatedButton(child: Text('A. 36'), onPressed: answerChoosen),
            // pointing the function
            ElevatedButton(
              child: Text('B. 38'),
              onPressed: () => print('chossen 2'),
            ),
            // one line function
            ElevatedButton(
                child: Text('C. 40'),
                onPressed: () {
                  print('choosen 3'); // more than one line function
                }),
            ElevatedButton(
              child: Text('D. 42'),
              onPressed: () => print('choosen 4'),
            ),
          ],
        ),
      ),
    );
  }
}
