import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'question_brain.dart';
import 'resultscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade400,
        body: QuizzlerPage(),
      ),
    );
  }
}

QuestionBrain questionBrain = QuestionBrain();

class QuizzlerPage extends StatefulWidget {
  @override
  _QuizzlerPageState createState() => _QuizzlerPageState();
}

void checkCorrectAnswer() {
  if (questionBrain.questionNumber == 0) {
    if (userPickedAnswer == 'B') {
      optionBColor = Colors.green;
      score = score + 5;
    } else {
      optionBColor = Colors.green;
      optionAColor = Colors.red;
      optionCColor = Colors.red;
      optionDColor = Colors.red;
    }
  } else if (questionBrain.questionNumber == 1) {
    if (userPickedAnswer == 'C') {
      optionCColor = Colors.green;
      score = score + 5;
    } else {
      optionCColor = Colors.green;
      optionAColor = Colors.red;
      optionBColor = Colors.red;
      optionDColor = Colors.red;
    }
  } else if (questionBrain.questionNumber == 2) {
    if (userPickedAnswer == 'B') {
      optionBColor = Colors.green;
      score = score + 5;
    } else {
      optionBColor = Colors.green;
      optionAColor = Colors.red;
      optionCColor = Colors.red;
      optionDColor = Colors.red;
    }
  } else if (questionBrain.questionNumber == 3) {
    if (userPickedAnswer == 'A') {
      optionAColor = Colors.green;
      score = score + 5;
    } else {
      optionAColor = Colors.green;
      optionBColor = Colors.red;
      optionCColor = Colors.red;
      optionDColor = Colors.red;
    }
  } else if (questionBrain.questionNumber == 4) {
    if (userPickedAnswer == 'A') {
      optionAColor = Colors.green;
      score = score + 5;
    } else {
      optionAColor = Colors.green;
      optionBColor = Colors.red;
      optionCColor = Colors.red;
      optionDColor = Colors.red;
    }
  } else if (questionBrain.questionNumber == 5) {
    if (userPickedAnswer == 'C') {
      optionCColor = Colors.green;
      score = score + 5;
    } else {
      optionCColor = Colors.green;
      optionAColor = Colors.red;
      optionBColor = Colors.red;
      optionDColor = Colors.red;
    }
  } else if (questionBrain.questionNumber == 6) {
    if (userPickedAnswer == 'B') {
      optionBColor = Colors.green;
      score = score + 5;
    } else {
      optionBColor = Colors.green;
      optionAColor = Colors.red;
      optionCColor = Colors.red;
      optionDColor = Colors.red;
    }
  } else if (questionBrain.questionNumber == 7) {
    if (userPickedAnswer == 'B') {
      optionBColor = Colors.green;
      score = score + 5;
    } else {
      optionBColor = Colors.green;
      optionAColor = Colors.red;
      optionCColor = Colors.red;
      optionDColor = Colors.red;
    }
  } else if (questionBrain.questionNumber == 8) {
    if (userPickedAnswer == 'A') {
      optionAColor = Colors.green;
      score = score + 5;
    } else {
      optionAColor = Colors.green;
      optionBColor = Colors.red;
      optionCColor = Colors.red;
      optionDColor = Colors.red;
    }
  } else if (questionBrain.questionNumber == 9) {
    if (userPickedAnswer == 'B') {
      optionBColor = Colors.green;
      score = score + 5;
    } else {
      optionBColor = Colors.green;
      optionAColor = Colors.red;
      optionCColor = Colors.red;
      optionDColor = Colors.red;
    }
  }
}

String userPickedAnswer;

int score = 0;

Color optionAColor = Colors.grey;
Color optionBColor = Colors.grey;
Color optionCColor = Colors.grey;
Color optionDColor = Colors.grey;

void defaultColor() {
  optionAColor = Colors.grey;
  optionBColor = Colors.grey;
  optionCColor = Colors.grey;
  optionDColor = Colors.grey;
}

class _QuizzlerPageState extends State<QuizzlerPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Text(
                'Question ${questionBrain.questionNumber + 1} of ${questionBrain.questionBank.length}',
                style: TextStyle(fontSize: 22.0),
              ),
            ),
            Expanded(
              flex: 4,
              child: Center(
                child: Text(
                  questionBrain.getQuestion(),
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: FlatButton(
                  color: optionAColor,
                  onPressed: () {
                    setState(() {
                      userPickedAnswer = 'A';
                      checkCorrectAnswer();
                    });
                  },
                  child: Text(
                    questionBrain.getAnswerA(),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: FlatButton(
                  color: optionBColor,
                  onPressed: () {
                    setState(() {
                      userPickedAnswer = 'B';
                      checkCorrectAnswer();
                    });
                  },
                  child: Text(
                    questionBrain.getAnswerB(),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: FlatButton(
                  color: optionCColor,
                  onPressed: () {
                    setState(() {
                      userPickedAnswer = 'C';
                      checkCorrectAnswer();
                    });
                  },
                  child: Text(
                    questionBrain.getAnswerC(),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: FlatButton(
                  color: optionDColor,
                  onPressed: () {
                    setState(() {
                      userPickedAnswer = 'D';
                      checkCorrectAnswer();
                    });
                  },
                  child: Text(
                    questionBrain.getAnswerD(),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Score = $score',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(
                      child: Visibility(
                        visible: nextButtonVisible(),
                        child: FlatButton(
                          color: Colors.green,
                          onPressed: () {
                            setState(() {
                              questionBrain.nextQuestion();
                              defaultColor();
                            });
                          },
                          child: Text('NEXT'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Visibility(
                visible: buttonVisibility(),
                child: FlatButton(
                  color: Colors.black26,
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultScreen(),
                        ),
                      );
                    });
                  },
                  child: Text(
                    'Get Result',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  bool nextButtonVisible() {
    if (questionBrain.questionNumber == 9) {
      return false;
    } else {
      return true;
    }
  }

  bool buttonVisibility() {
    if (questionBrain.questionNumber == 9) {
      return true;
    } else {
      return false;
    }
  }
}
